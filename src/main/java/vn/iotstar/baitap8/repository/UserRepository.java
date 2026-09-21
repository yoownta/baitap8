package vn.iotstar.baitap8.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import vn.iotstar.baitap8.entity.User;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
}
