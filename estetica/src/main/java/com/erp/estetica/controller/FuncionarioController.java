package com.erp.estetica.controller;

import com.erp.estetica.model.Funcionario;
import com.erp.estetica.repository.FuncionarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/funcionarios")
public class FuncionarioController {

    @Autowired
    private FuncionarioRepository funcionarioRepository;

    @GetMapping
    public String listar(Model model) {
        model.addAttribute("funcionarios", funcionarioRepository.findAll());
        return "funcionarios/lista";
    }

    @GetMapping("/novo")
    public String novo(Model model) {
        model.addAttribute("funcionario", new Funcionario());
        return "funcionarios/form";
    }

    @PostMapping("/salvar")
    public String salvar(@ModelAttribute Funcionario funcionario) {
        if (funcionario.getId() != null) {
            // Atualiza o funcionário se o ID já existir
            funcionarioRepository.save(funcionario);
        } else {
            // Cria um novo funcionário se não tiver ID
            funcionarioRepository.save(funcionario);
        }
        return "redirect:/funcionarios";
    }

    @GetMapping("/editar/{id}")
    public String editar(@PathVariable("id") Integer id, Model model) {
        Funcionario funcionario = funcionarioRepository.findById(id).orElse(null);
        if (funcionario != null) {
            model.addAttribute("funcionario", funcionario);
            return "funcionarios/form";
        } else {
            return "redirect:/funcionarios";  // Caso não encontre o funcionário
        }
    }

    @GetMapping("/deletar/{id}")
    public String deletar(@PathVariable("id") Integer id) {
        funcionarioRepository.deleteById(id);
        return "redirect:/funcionarios";
    }
}
