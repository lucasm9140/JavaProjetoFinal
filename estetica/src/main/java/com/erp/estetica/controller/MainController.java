package com.erp.estetica.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

    // Mapeia a página "Sobre"
    @GetMapping("/sobre")
    public String sobre() {
        return "sobre"; // Nome do arquivo sobre.html
    }

    // Mapeia a página "Contato"
    @GetMapping("/contato")
    public String contato() {
        return "contato"; // Nome do arquivo contato.html
    }

    // Mapeia o Dashboard
    @GetMapping("/dashboard")
    public String dashboard() {
        return "dashboard"; // Nome do arquivo dashboard.html
    }
}