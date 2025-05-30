package com.example.Phamacy_Project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.Phamacy_Project.domain.Cart;
import com.example.Phamacy_Project.domain.CartDetail;
import com.example.Phamacy_Project.domain.Product;

@Repository
public interface CartDetailRepository extends JpaRepository<CartDetail, Long> {

    CartDetail findByCartAndProduct(Cart cart, Product product);

    boolean existsByCartAndProduct(Cart cart, Product product);
}
