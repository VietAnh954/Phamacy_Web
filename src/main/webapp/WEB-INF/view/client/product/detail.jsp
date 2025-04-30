<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <jsp:include page="../layout/header.jsp" />

        <div class="container mt-5">
            <div class="row">
                <div class="col-md-6">
                    <img src="${product.imageUrl}" class="img-fluid" alt="${product.name}">
                </div>
                <div class="col-md-6">
                    <h2>${product.name}</h2>
                    <p class="price">${product.price} VNĐ</p>
                    <p class="origin">Xuất xứ: ${product.origin}</p>
                    <p class="description">${product.description}</p>

                    <div class="quantity">
                        <label>Số lượng:</label>
                        <input type="number" min="1" value="1" class="form-control w-25">
                    </div>

                    <button class="btn btn-primary mt-3">Thêm vào giỏ hàng</button>
                </div>
            </div>

            <!-- Related Products -->
            <div class="related-products mt-5">
                <h3>Sản phẩm liên quan</h3>
                <div class="row">
                    <c:forEach items="${relatedProducts}" var="relatedProduct">
                        <div class="col-md-3">
                            <div class="card">
                                <img src="${relatedProduct.imageUrl}" class="card-img-top" alt="${relatedProduct.name}">
                                <div class="card-body">
                                    <h5 class="card-title">${relatedProduct.name}</h5>
                                    <p class="card-text">${relatedProduct.price} VNĐ</p>
                                    <a href="/product/detail/${relatedProduct.id}" class="btn btn-primary">Xem chi
                                        tiết</a>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>

        <jsp:include page="../layout/footer.jsp" />