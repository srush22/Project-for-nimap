package com.example.project.repository;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.example.project.pojos.Product;

public interface ProductRepository extends JpaRepository<Product,Long>{
    List<Product> findByCategory_id(Long categoryId, Pageable pageable);

    
}
