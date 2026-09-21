package vn.iotstar.baitap8.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.graphql.data.method.annotation.Argument;
import org.springframework.graphql.data.method.annotation.MutationMapping;
import org.springframework.graphql.data.method.annotation.QueryMapping;
import org.springframework.stereotype.Controller;
import vn.iotstar.baitap8.dto.CategoryInput;
import vn.iotstar.baitap8.entity.Category;
import vn.iotstar.baitap8.repository.CategoryRepository;

import java.util.List;
import java.util.Optional;

@Controller
public class CategoryController {

    @Autowired
    private CategoryRepository categoryRepository;

    @QueryMapping
    public List<Category> getAllCategories() {
        return categoryRepository.findAll();
    }

    @QueryMapping
    public Category getCategoryById(@Argument Long id) {
        return categoryRepository.findById(id).orElse(null);
    }

    @MutationMapping
    public Category createCategory(@Argument CategoryInput input) {
        Category category = new Category();
        category.setName(input.getName());
        category.setImages(input.getImages());
        return categoryRepository.save(category);
    }

    @MutationMapping
    public Category updateCategory(@Argument Long id, @Argument CategoryInput input) {
        Optional<Category> opt = categoryRepository.findById(id);
        if (opt.isPresent()) {
            Category category = opt.get();
            category.setName(input.getName());
            category.setImages(input.getImages());
            return categoryRepository.save(category);
        }
        return null;
    }

    @MutationMapping
    public Boolean deleteCategory(@Argument Long id) {
        if (categoryRepository.existsById(id)) {
            categoryRepository.deleteById(id);
            return true;
        }
        return false;
    }
}
