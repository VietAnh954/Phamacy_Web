package com.example.Phamacy_Project.service;

import java.util.Collections;
import java.util.Optional;

import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

public class CustomUserDetailsService implements UserDetailsService {

    public final UserService userService;

    public CustomUserDetailsService(UserService userService) {
        this.userService = userService;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

        Optional<com.example.Phamacy_Project.domain.User> user = this.userService.getUserByEmail(username);

        if (user == null) {
            throw new UsernameNotFoundException("User not found");
        }
        return new User(
                user.get().getEmail(),
                user.get().getPassword(),
                Collections.singletonList(new SimpleGrantedAuthority("ROLE_" + user.get().getRole().getName())));

    }

}
