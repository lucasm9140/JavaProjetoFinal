package com.erp.estetica.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import com.erp.estetica.model.Produto;

public interface ProdutoRepository extends JpaRepository<Produto, Integer> {
    List<Produto> findById(int id);
}
