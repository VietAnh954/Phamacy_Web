package com.example.Phamacy_Project.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller

public class ProductController {
    @GetMapping("/admin/product")
    public String product() {
        return "admin/product/show";
    }
}