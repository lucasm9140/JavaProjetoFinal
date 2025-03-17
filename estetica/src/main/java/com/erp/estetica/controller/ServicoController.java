package com.erp.estetica.controller;

import com.erp.estetica.model.Servico;
import com.erp.estetica.repository.ServicoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/servicos")
public class ServicoController {

    @Autowired
    private ServicoRepository servicoRepository;

    // Lista todos os serviços
    @GetMapping
    public String listar(Model model) {
        model.addAttribute("servicos", servicoRepository.findAll());
        return "servicos/lista";
    }

    // Exibe o formulário para cadastrar um novo serviço
    @GetMapping("/novo")
    public String novo(Model model) {
        model.addAttribute("servico", new Servico());
        return "servicos/form";
    }

    // Salva ou atualiza o serviço
    @PostMapping("/salvar")
    public String salvar(@ModelAttribute Servico servico) {
        servicoRepository.save(servico);
        return "redirect:/servicos";
    }

    // Exibe o formulário para editar um serviço
    @GetMapping("/editar/{id}")
    public String editar(@PathVariable("id") Integer id, Model model) {
        Servico servico = servicoRepository.findById(id).orElse(null);
        model.addAttribute("servico", servico);
        return "servicos/form";
    }

    // Deleta um serviço
    @GetMapping("/deletar/{id}")
    public String deletar(@PathVariable("id") Integer id) {
        servicoRepository.deleteById(id);
        return "redirect:/servicos";
    }
}