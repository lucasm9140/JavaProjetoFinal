package com.erp.estetica.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.erp.estetica.model.Agendamento;

public interface AgendamentoRepository extends JpaRepository<Agendamento, Integer> {
}
