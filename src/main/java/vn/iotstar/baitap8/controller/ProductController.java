package vn.iotstar.baitap8.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.graphql.data.method.annotation.Argument;
import org.springframework.graphql.data.method.annotation.MutationMapping;
import org.springframework.graphql.data.method.annotation.QueryMapping;
import org.springframework.stereotype.Controller;
import vn.iotstar.baitap8.dto.ProductInput;
import vn.iotstar.baitap8.entity.Category;
import vn.iotstar.baitap8.entity.Product;
import vn.iotstar.baitap8.repository.CategoryRepository;
import vn.iotstar.baitap8.repository.ProductRepository;

import java.util.List;
import java.util.Optional;

@Controller
public class ProductController {

    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private CategoryRepository categoryRepository;

    @QueryMapping
    public List<Product> getAllProducts() {
        return productRepository.findAll();
    }

    @QueryMapping
    public Product getProductById(@Argument Long id) {
        return productRepository.findById(id).orElse(null);
    }

    @QueryMapping
    public List<Product> getProductsSortedByPrice() {
        return productRepository.findAllByOrderByPriceAsc();
    }

    @QueryMapping
    public List<Product> getProductsByCategory(@Argument Long categoryId) {
        return productRepository.findByCategoryId(categoryId);
    }

    @MutationMapping
    public Product createProduct(@Argument ProductInput input) {
        Product product = new Product();
        mapInputToEntity(input, product);
        return productRepository.save(product);
    }

    @MutationMapping
    public Product updateProduct(@Argument Long id, @Argument ProductInput input) {
        Optional<Product> opt = productRepository.findById(id);
        if (opt.isPresent()) {
            Product product = opt.get();
            mapInputToEntity(input, product);
            return productRepository.save(product);
        }
        return null;
    }

    @MutationMapping
    public Boolean deleteProduct(@Argument Long id) {
        if (productRepository.existsById(id)) {
            productRepository.deleteById(id);
            return true;
        }
        return false;
    }

    private void mapInputToEntity(ProductInput input, Product product) {
        product.setTitle(input.getTitle());
        product.setQuantity(input.getQuantity());
        product.setDescription(input.getDescription());
        product.setImages(input.getImages());
        product.setPrice(input.getPrice());
        if (input.getCategoryId() != null) {
            Category category = categoryRepository.findById(input.getCategoryId()).orElse(null);
            product.setCategory(category);
        }
    }
}
