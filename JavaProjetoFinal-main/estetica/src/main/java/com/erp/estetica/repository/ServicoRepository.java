package com.erp.estetica.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;

import com.erp.estetica.model.Servico;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.Converter;

public interface ServicoRepository extends JpaRepository<Servico, Integer> {
    @Component
public class StringToServicoConverter implements Converter<String, Servico> {

    @Autowired
    private ServicoRepository servicoRepository;

    @Override
    public Servico convert(String id) {
        return servicoRepository.findById(Integer.parseInt(id))
                .orElseThrow(() -> new IllegalArgumentException("Serviço inválido"));
    }

    @Override
    public JavaType getInputType(TypeFactory arg0) {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'getInputType'");
    }

    @Override
    public JavaType getOutputType(TypeFactory arg0) {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'getOutputType'");
    }
}
}
