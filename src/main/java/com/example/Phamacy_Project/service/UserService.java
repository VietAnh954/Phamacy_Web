package com.example.Phamacy_Project.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.Phamacy_Project.domain.User;
import com.example.Phamacy_Project.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public List<User> getAllUser() {
        return this.userRepository.findAll();
    }

    public User getUserById(long id) {
        return this.userRepository.findById(id);
    }

    public User getUserByEmail(String email) {
        return this.userRepository.findByEmail(email);
    }

    public User saveUser(User user) {
        return this.userRepository.save(user);
    }
}
