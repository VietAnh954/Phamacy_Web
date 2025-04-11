package com.example.Phamacy_Project.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.Phamacy_Project.domain.Role;
import com.example.Phamacy_Project.domain.User;
import com.example.Phamacy_Project.repository.RoleRepository;
import com.example.Phamacy_Project.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository userRepository;
    private final RoleRepository roleRepository;

    public UserService(UserRepository userRepository,
            RoleRepository roleRepository) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
    }

    public List<User> getAllUsers() {
        return this.userRepository.findAll();
    }

    public User getUserById(long id) {
        return this.userRepository.findById(id);
    }

    // public User getUserByEmail(String email) {
    // return this.userRepository.findByEmail(email);
    // }

    public User handleSaveUser(User user) {
        return this.userRepository.save(user);
    }

    public void deleteAUser(long id) {
        this.userRepository.deleteById(id);
    }

    public Role getRoleByName(String name) {
        return this.roleRepository.findByName(name);
    }
}
