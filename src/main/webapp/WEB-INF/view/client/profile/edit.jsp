<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

                <!DOCTYPE html>
                <html lang="vi">

                <head>
                    <meta charset="utf-8">
                    <title>Chỉnh sửa Profile - Pharmacy Store</title>
                    <meta content="width=device-width, initial-scale=1.0" name="viewport">
                    <!-- Google Web Fonts -->
                    <link rel="preconnect" href="https://fonts.googleapis.com">
                    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
                    <link
                        href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap"
                        rel="stylesheet">
                    <!-- Icon Font Stylesheet -->
                    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
                    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
                        rel="stylesheet">
                    <!-- Libraries Stylesheet -->
                    <link href="/client/lib/lightbox/css/lightbox.min.css" rel="stylesheet">
                    <link href="/client/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
                    <!-- Customized Bootstrap Stylesheet -->
                    <link href="/client/css/bootstrap.min.css" rel="stylesheet">
                    <!-- Template Stylesheet -->
                    <link href="/client/css/style.css" rel="stylesheet">
                    <style>
                        .edit-container {
                            max-width: 800px;
                            margin: 0 auto;
                            padding: 20px;
                            background-color: #f9f9f9;
                            border-radius: 10px;
                            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
                        }

                        .btn-primary {
                            background-color: #01579b;
                            border-color: #01579b;
                        }

                        .btn-primary:hover {
                            background-color: #0288d1;
                            border-color: #0288d1;
                        }
                    </style>
                </head>

                <body>
                    <jsp:include page="../layout/header.jsp" />

                    <div class="container py-5 mt-5">
                        <div class="edit-container">
                            <h1 class="text-center mb-4">Chỉnh sửa thông tin</h1>
                            <form action="/edit-profile" method="post">
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                <div class="mb-3">
                                    <label class="form-label">Họ và tên</label>
                                    <input type="text" class="form-control" name="fullName" value="${user.fullName}"
                                        required>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Email</label>
                                    <input type="email" class="form-control" name="email" value="${user.email}"
                                        readonly>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Số điện thoại</label>
                                    <input type="text" class="form-control" name="phoneNumber"
                                        value="${user.phoneNumber}">
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Địa chỉ</label>
                                    <input type="text" class="form-control" name="address" value="${user.address}">
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Ảnh đại diện (đường dẫn)</label>
                                    <input type="text" class="form-control" name="avatar" value="${user.avatar}"
                                        placeholder="Nhập đường dẫn ảnh">
                                </div>
                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary">Lưu thay đổi</button>
                                </div>
                            </form>
                        </div>
                    </div>

                    <jsp:include page="../layout/footer.jsp" />

                    <!-- JavaScript Libraries -->
                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
                    <script src="/client/lib/easing/easing.min.js"></script>
                    <script src="/client/lib/waypoints/waypoints.min.js"></script>
                    <script src="/client/lib/lightbox/js/lightbox.min.js"></script>
                    <script src="/client/lib/owlcarousel/owl.carousel.min.js"></script>
                    <!-- Template Javascript -->
                    <script src="/client/js/main.js"></script>
                </body>

                </html>