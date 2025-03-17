package com.erp.estetica.controller;

import com.erp.estetica.model.Produto;
import com.erp.estetica.repository.ProdutoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/produtos")
public class ProdutoController {

    @Autowired
    private ProdutoRepository produtoRepository;

    @GetMapping
    public String listar(Model model) {
        model.addAttribute("produtos", produtoRepository.findAll());
        return "produtos/lista";
    }

    @GetMapping("/novo")
    public String novo(Model model) {
        model.addAttribute("produto", new Produto());
        return "produtos/form";
    }

    @PostMapping("/salvar")
    public String salvar(@ModelAttribute Produto produto) {
        produtoRepository.save(produto);
        return "redirect:/produtos";
    }

    @GetMapping("/editar/{id}")
    public String editar(@PathVariable("id") Integer id, Model model) {
        Produto produto = produtoRepository.findById(id).orElse(null);
        model.addAttribute("produto", produto);
        return "produtos/form";
    }

    @GetMapping("/deletar/{id}")
    public String deletar(@PathVariable("id") Integer id) {
        produtoRepository.deleteById(id);
        return "redirect:/produtos";
    }
}
