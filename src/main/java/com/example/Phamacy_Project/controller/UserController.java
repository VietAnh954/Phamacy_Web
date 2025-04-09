package com.example.Phamacy_Project.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.Phamacy_Project.domain.User;
import com.example.Phamacy_Project.service.UserService;

@Controller
public class UserController {
    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    // HOME PAGE
    @RequestMapping("/")
    public String getPageHome(Model model) {
        model.addAttribute("value1", "Xin Chao ");
        model.addAttribute("value2", "ConKec"); // Add any attributes to the model if needed
        return "hello";
    }

    // ADMIN USER PAGE
    @RequestMapping("/admin/user")
    public String getPageAdmin(Model model) {
        List<User> users = this.userService.getAllUser();
        model.addAttribute("users", "users");
        return "admin/user/table-user";
    }

}
