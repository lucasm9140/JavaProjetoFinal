package com.erp.estetica.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.erp.estetica.model.Agendamento;
import com.erp.estetica.model.Servico;
import com.erp.estetica.repository.AgendamentoRepository;
import com.erp.estetica.repository.ServicoRepository;

@Controller
@RequestMapping("/agendamentos")
public class AgendamentoController {

    @Autowired
    private AgendamentoRepository agendamentoRepository;

    @Autowired
    private ServicoRepository servicoRepository;

    // Lista todos os agendamentos
    @GetMapping
    public String listar(Model model) {
        List<Agendamento> agendamentos = agendamentoRepository.findAll();
        model.addAttribute("agendamentos", agendamentos);
        return "agendamentos/lista";
    }

    // Exibe o formulário para criar um novo agendamento
    @GetMapping("/novo")
    public String novo(Model model) {
        List<Servico> servicos = servicoRepository.findAll();
        model.addAttribute("servicos", servicos);
        model.addAttribute("agendamento", new Agendamento());
        return "agendamentos/form";
    }

    // Método atualizado para salvar (criar ou atualizar)
    @PostMapping("/salvar")
    public String salvar(
        @Valid @ModelAttribute("agendamento") Agendamento agendamento,
        BindingResult result, // Captura erros de validação
        Model model) {

        // Verifica se há erros de validação no formulário
        if (result.hasErrors()) {
            model.addAttribute("servicos", servicoRepository.findAll());
            return "agendamentos/form"; // Retorna ao formulário em caso de erro
        }

        // Se o agendamento já tiver um ID, será atualizado
        if (agendamento.getId() != null && agendamentoRepository.existsById(agendamento.getId())) {
            agendamentoRepository.save(agendamento); // Atualiza o agendamento existente
        } else {
            agendamentoRepository.save(agendamento); // Cria um novo agendamento
        }

        return "redirect:/agendamentos"; // Redireciona para a lista de agendamentos
    }

    // Exibe o formulário para editar um agendamento
    @GetMapping("/editar/{id}")
    public String editar(@PathVariable("id") Integer id, Model model) {
        Agendamento agendamento = agendamentoRepository.findById(id).orElse(null);
        if (agendamento == null) {
            // Caso não encontre o agendamento, redireciona para a lista
            return "redirect:/agendamentos";
        }
        List<Servico> servicos = servicoRepository.findAll();
        model.addAttribute("servicos", servicos);
        model.addAttribute("agendamento", agendamento);
        return "agendamentos/form";
    }

    // Remove um agendamento
    @GetMapping("/deletar/{id}")
    public String deletar(@PathVariable("id") Integer id) {
        agendamentoRepository.deleteById(id);
        return "redirect:/agendamentos"; // Redireciona para a lista de agendamentos
    }
}
