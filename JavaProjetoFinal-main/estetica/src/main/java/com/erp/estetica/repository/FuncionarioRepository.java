package com.erp.estetica.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.erp.estetica.model.Funcionario;

public interface FuncionarioRepository extends JpaRepository<Funcionario, Integer> {
}
