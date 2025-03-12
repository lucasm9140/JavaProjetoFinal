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

    // Lista todos os funcionários
    @GetMapping
    public String listar(Model model) {
        model.addAttribute("funcionarios", funcionarioRepository.findAll());
        return "funcionarios/lista";
    }

    // Exibe o formulário para cadastrar um novo funcionário
    @GetMapping("/novo")
    public String novo(Model model) {
        model.addAttribute("funcionario", new Funcionario());
        return "funcionarios/form";
    }

    // Salva ou atualiza o funcionário
    @PostMapping("/salvar")
    public String salvar(@ModelAttribute Funcionario funcionario) {
        funcionarioRepository.save(funcionario);
        return "redirect:/funcionarios";
    }

    // Exibe o formulário para editar um funcionário
    @GetMapping("/editar/{id}")
    public String editar(@PathVariable("id") Integer id, Model model) {
        Funcionario funcionario = funcionarioRepository.findById(id).orElse(null);
        model.addAttribute("funcionario", funcionario);
        return "funcionarios/form";
    }

    // Deleta um funcionário
    @GetMapping("/deletar/{id}")
    public String deletar(@PathVariable("id") Integer id) {
        funcionarioRepository.deleteById(id);
        return "redirect:/funcionarios";
    }
}
