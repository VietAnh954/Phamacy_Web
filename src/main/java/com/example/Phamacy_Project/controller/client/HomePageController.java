package com.example.Phamacy_Project.controller.client;

import java.util.List;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.validation.Valid;

import com.example.Phamacy_Project.domain.Product;
import com.example.Phamacy_Project.domain.User;
import com.example.Phamacy_Project.domain.dto.RegisterDTO;
import com.example.Phamacy_Project.service.ProductService;
import com.example.Phamacy_Project.service.UserService;

@Controller
public class HomePageController {
    private final ProductService productService;
    private final UserService userService;
    private final PasswordEncoder passwordEncoder;

    public HomePageController(ProductService productService, UserService userService, PasswordEncoder passwordEncoder) {
        this.productService = productService;
        this.userService = userService;
        this.passwordEncoder = passwordEncoder;
    }

    @GetMapping("/")
    public String getHomePage(Model model) {
        List<Product> products = this.productService.getAllProducts();
        model.addAttribute("product1", products);
        return "client/homepage/show";
    }

    @GetMapping("/search")
    public String searchProducts(@RequestParam String keyword, Model model) {
        List<Product> products = this.productService.searchProducts(keyword);
        model.addAttribute("product1", products);
        model.addAttribute("keyword", keyword);
        return "client/homepage/show";
    }

    @GetMapping("/filter")
    public String filterProducts(
            @RequestParam(required = false) Double minPrice,
            @RequestParam(required = false) Double maxPrice,
            @RequestParam(required = false) String factory,
            Model model) {
        List<Product> products = this.productService.filterProducts(minPrice, maxPrice, factory);
        model.addAttribute("product1", products);
        model.addAttribute("selectedFactory", factory);
        model.addAttribute("selectedMinPrice", minPrice);
        model.addAttribute("selectedMaxPrice", maxPrice);
        return "client/homepage/show";
    }

    @GetMapping("/register")
    public String getRegisterPage(Model model) {
        model.addAttribute("registerUser", new RegisterDTO());
        return "client/auth/register";
    }

    @PostMapping("/register")
    public String handleRegister(@ModelAttribute("registerUser") @Valid RegisterDTO registerDTO,
            BindingResult bindingResult) {

        // Validate
        if (bindingResult.hasErrors()) {
            return "client/auth/register";
        }

        User user = this.userService.registerDTOtoUser(registerDTO);

        String hashPassword = this.passwordEncoder.encode(user.getPassword());

        user.setPassword(hashPassword);
        user.setRole(this.userService.getRoleByName("USER"));
        // save
        this.userService.handleSaveUser(user);
        return "redirect:/login";

    }

    @GetMapping("/login")
    public String getLoginPage(Model model) {
        return "client/auth/login";
    }
}
