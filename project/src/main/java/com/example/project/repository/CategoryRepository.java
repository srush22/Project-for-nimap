package com.example.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.project.pojos.Category;

public interface CategoryRepository extends JpaRepository<Category, Long> {
    
}
