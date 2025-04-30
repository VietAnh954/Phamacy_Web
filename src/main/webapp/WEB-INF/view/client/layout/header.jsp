<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Pharmacy Store</title>
        <link rel="stylesheet" href="../../../../resources/client/css/style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>

    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container">
                <a class="navbar-brand" href="/">Pharmacy Store</a>

                <!-- Search Bar -->
                <form class="d-flex" action="/search" method="GET">
                    <input class="form-control me-2" type="search" name="keyword" placeholder="Tìm kiếm sản phẩm...">
                    <button class="btn btn-outline-success" type="submit">Tìm kiếm</button>
                </form>

                <!-- Cart Icon -->
                <div class="cart">
                    <a href="/cart" class="btn btn-primary">
                        <i class="fas fa-shopping-cart"></i> Giỏ hàng
                    </a>
                </div>
            </div>
        </nav>
    </body>

    </html>