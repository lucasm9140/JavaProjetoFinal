package com.erp.estetica.controller;

import com.erp.estetica.repository.ClienteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {

    @Autowired
    private ClienteRepository clienteRepository;

    // Mapeamento para a página inicial (index)
    @GetMapping("/")
    public String index(Model model) {
        model.addAttribute("clientes", clienteRepository.findAll()); // Passando a lista de clientes para a página
        return "index";  // O nome do template (index.html)
    }
}
