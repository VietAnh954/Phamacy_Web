package com.example.Phamacy_Project.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.Phamacy_Project.domain.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    // List<User> findByEmail(String email);

    Optional<User> findByEmail(String username);

    User save(User temp);

    User findById(long id);

    void deleteById(long id);

    boolean existsByEmail(String email);
}