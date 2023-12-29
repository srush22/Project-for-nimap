package com.example.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.example.project.repository.CategoryRepository;
import com.example.project.pojos.Category;

@Service
public class CategoryServiceImp implements CategoryService {
    
    @Autowired
    private CategoryRepository categoryRepository;


    @Override
    public java.util.List<Category> getAllCategories(Pageable pageable){
        return categoryRepository.findAll(pageable).getContent();
    }

    @Override
    public Category getCategoryById(Long id){
        return categoryRepository.findById(id).orElse(null);
    }

    @Override
    public Category createCategory(Category category){
        return categoryRepository.save(category);
    }

    @Override
    public Category updateCategory(Long id,Category category){
        Category existinCategory = categoryRepository.findById(id).orElse(null);
        if(existinCategory != null){
            existinCategory.setName(category.getName());
            return categoryRepository.save(existinCategory);
        }
        return null;
    }

    @Override
    public void deleteCategory(Long id){
        categoryRepository.deleteById(id);
    }
}
