package com.example.project.service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.example.project.pojos.Category;

public interface CategoryService {
    List<Category> getAllCategories(Pageable pageable);
    Category getCategoryById(Long id);
    Category createCategory(Category category);
    Category updateCategory(Long id, Category category);
    void deleteCategory(Long id);
}
