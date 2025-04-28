package com.example.Phamacy_Project.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.example.Phamacy_Project.domain.Product;
import com.example.Phamacy_Project.repository.ProductRepository;

@Service
public class ProductService {
    private final ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    // Tìm tất cả sản phẩm
    public List<Product> getAllProducts() {
        return this.productRepository.findAll();
    }

    // Tìm sản phẩm theo id
    public Optional<Product> fetchProductById(long id) {
        return this.productRepository.findById(id);
    }

    // Lưu sản phẩm
    public Product saveProduct(Product product) {
        return this.productRepository.save(product);
    }

    // Xóa sản phẩm theo id
    public void deleteProduct(long id) {
        this.productRepository.deleteById(id);
    }
}
