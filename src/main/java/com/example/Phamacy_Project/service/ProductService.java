package com.example.Phamacy_Project.service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

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

    // Tìm kiếm sản phẩm theo tên
    public List<Product> searchProducts(String keyword) {
        if (keyword == null || keyword.trim().isEmpty()) {
            return getAllProducts();
        }
        return productRepository.findByNameContainingIgnoreCase(keyword);
    }

    // Lọc sản phẩm theo giá và xuất xứ
    public List<Product> filterProducts(Double minPrice, Double maxPrice, String factory) {
        if (minPrice == null && maxPrice == null && (factory == null || factory.trim().isEmpty())) {
            return getAllProducts();
        }

        List<Product> products = getAllProducts();

        return products.stream()
                .filter(p -> {
                    boolean priceMatch = true;
                    if (minPrice != null) {
                        priceMatch = p.getPrice() >= minPrice;
                    }
                    if (maxPrice != null) {
                        priceMatch = priceMatch && p.getPrice() <= maxPrice;
                    }

                    boolean factoryMatch = true;
                    if (factory != null && !factory.trim().isEmpty()) {
                        factoryMatch = factory.equals(p.getFactory());
                    }

                    return priceMatch && factoryMatch;
                })
                .collect(Collectors.toList());
    }
}
