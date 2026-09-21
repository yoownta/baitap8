package vn.iotstar.baitap8.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import vn.iotstar.baitap8.entity.Category;
import org.springframework.stereotype.Repository;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Long> {
}
