package com.erp.estetica.controller;

import com.erp.estetica.model.Venda;
import com.erp.estetica.repository.VendaRepository;
import com.erp.estetica.repository.ProdutoRepository;
import com.erp.estetica.repository.ClienteRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/vendas")
public class VendaController { 

    @Autowired
    private VendaRepository vendaRepository;

    @Autowired
    private ProdutoRepository produtoRepository;

    @Autowired
    private ClienteRepository clienteRepository;

    // Lista todas as vendas
    @GetMapping
    public String listar(Model model) {
        model.addAttribute("vendas", vendaRepository.findAll());
        return "vendas/lista";
    }

    // Exibe o formulário para cadastrar uma nova venda
    @GetMapping("/novo")
    public String novo(Model model) {
        model.addAttribute("venda", new Venda());
        model.addAttribute("produtos", produtoRepository.findAll());
        model.addAttribute("clientes", clienteRepository.findAll());
        return "vendas/form";
    }

    // Salva ou atualiza a venda
    @PostMapping("/salvar")
    public String salvar(@ModelAttribute Venda venda) {
        vendaRepository.save(venda);
        return "redirect:/vendas";
    }

    // Exibe o formulário para editar uma venda
    @GetMapping("/editar/{id}")
    public String editar(@PathVariable("id") Integer id, Model model) {
        Venda venda = vendaRepository.findById(id).orElse(null);
        model.addAttribute("venda", venda);
        model.addAttribute("produtos", produtoRepository.findAll());
        model.addAttribute("clientes", clienteRepository.findAll());
        return "vendas/form";
    }

    // Deleta uma venda
    @GetMapping("/deletar/{id}")
    public String deletar(@PathVariable("id") Integer id) {
        vendaRepository.deleteById(id);
        return "redirect:/vendas";
    }
}
