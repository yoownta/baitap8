package vn.iotstar.baitap8.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import vn.iotstar.baitap8.entity.Product;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {
    List<Product> findByCategoryId(Long categoryId);
    List<Product> findAllByOrderByPriceAsc();
}
