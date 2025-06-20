package com.example.Phamacy_Project.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.example.Phamacy_Project.domain.Role;
import com.example.Phamacy_Project.domain.User;
import com.example.Phamacy_Project.domain.dto.RegisterDTO;
import com.example.Phamacy_Project.repository.OrderRepository;
import com.example.Phamacy_Project.repository.ProductRepository;
import com.example.Phamacy_Project.repository.RoleRepository;
import com.example.Phamacy_Project.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository userRepository;
    private final RoleRepository roleRepository;
    private final ProductRepository productRepository;
    private final OrderRepository orderRepository;

    public UserService(UserRepository userRepository,
            RoleRepository roleRepository,
            ProductRepository productRepository,
            OrderRepository orderRepository) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
        this.productRepository = productRepository;
        this.orderRepository = orderRepository;
    }

    // Tìm tất cả người dùng
    public Page<User> getAllUsers(Pageable page) {
        return this.userRepository.findAll(page);
    }

    // Tìm người dùng theo id
    public User getUserById(long id) {
        return this.userRepository.findById(id);
    }

    // Lưu người dùng
    public User handleSaveUser(User user) {
        return this.userRepository.save(user);
    }

    // Xóa người dùng theo id
    public void deleteAUser(long id) {
        this.userRepository.deleteById(id);
    }

    // Role
    public Role getRoleByName(String name) {
        return this.roleRepository.findByName(name);
    }

    public User registerDTOtoUser(RegisterDTO registerDTO) {
        User user = new User();
        user.setFullName(registerDTO.getFirstName() + "" + registerDTO.getLastName());

        user.setEmail(registerDTO.getEmail());
        user.setPassword(registerDTO.getPassword());
        return user;
    }

    public boolean checkEmailExist(String email) {
        return this.userRepository.existsByEmail(email);

    }

    public Optional<User> getUserByEmail(String email) {
        return this.userRepository.findByEmail(email);
    }

    public long countUsers() {
        return this.userRepository.count();
    }

    public long countProducts() {
        return this.productRepository.count();
    }

    public long countOrders() {
        return this.orderRepository.count();
    }
}
