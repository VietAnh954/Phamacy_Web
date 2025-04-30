<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <jsp:include page="../layout/header.jsp" />

        <div class="container-fluid">
            <div class="row">
                <!-- Sidebar -->
                <div class="col-md-3">
                    <jsp:include page="../layout/sidebar.jsp" />
                </div>

                <!-- Main Content -->
                <div class="col-md-9">
                    <!-- Search Bar -->
                    <div class="search-bar mb-4">
                        <form action="/search" method="GET" class="d-flex">
                            <input type="text" name="keyword" class="form-control me-2"
                                placeholder="Tìm kiếm sản phẩm...">
                            <button type="submit" class="btn btn-primary">Tìm kiếm</button>
                        </form>
                    </div>

                    <div class="products-grid">
                        <div class="row">
                            <c:forEach items="${product1}" var="product">
                                <div class="col-md-4 mb-4">
                                    <div class="card h-100">
                                        <img src="/images/product/${product.image}" class="card-img-top"
                                            alt="${product.name}">
                                        <div class="card-body">
                                            <h5 class="card-title">${product.name}</h5>
                                            <p class="card-text text-truncate">${product.shortDesc}</p>
                                            <p class="card-text text-danger fw-bold">${product.price} VNĐ</p>
                                            <div class="d-flex justify-content-between align-items-center">
                                                <a href="/product/${product.id}" class="btn btn-primary">Chi tiết</a>
                                                <button class="btn btn-success" onclick="addToCart('${product.id}')">
                                                    <i class="fas fa-cart-plus"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>

                        <!-- Pagination -->
                        <nav aria-label="Page navigation" class="mt-4">
                            <ul class="pagination justify-content-center">
                                <li class="page-item disabled">
                                    <a class="page-link" href="#" tabindex="-1">Previous</a>
                                </li>
                                <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                <li class="page-item">
                                    <a class="page-link" href="#">Next</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>

        <jsp:include page="../layout/footer.jsp" />

        <!-- Add to Cart Script -->
        <script>
            function addToCart(productId) {
                // Implement add to cart functionality
                alert('Đã thêm sản phẩm vào giỏ hàng!');
            }
        </script>