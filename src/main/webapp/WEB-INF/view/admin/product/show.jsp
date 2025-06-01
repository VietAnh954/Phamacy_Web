<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <meta name="description" content="Dự án PhamacyStore" />
                <meta name="author" content="VietAnh" />
                <title>Products - PhamacyStore</title>
                <link href="/css/styles.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
                <style>
                    .table thead th {
                        background-color: #01579b;
                        color: #ffffff;
                    }

                    .table-hover tbody tr:hover {
                        background-color: #f5f5f5;
                        transition: all 0.3s ease;
                    }

                    .btn-action {
                        padding: 5px 10px;
                        font-size: 14px;
                        transition: all 0.3s ease;
                    }

                    .btn-action:hover {
                        transform: scale(1.05);
                    }

                    .pagination .page-link {
                        color: #01579b;
                    }

                    .pagination .page-item.active .page-link {
                        background-color: #01579b;
                        border-color: #01579b;
                        color: #ffffff;
                    }

                    .pagination .disabled .page-link {
                        color: #999;
                        background-color: #f8f9fa;
                    }

                    .btn-primary {
                        transition: all 0.3s ease;
                    }

                    .btn-primary:hover {
                        background-color: #0288d1;
                        transform: scale(1.05);
                    }
                </style>
            </head>

            <body class="sb-nav-fixed">
                <jsp:include page="../layout/header.jsp" />
                <div id="layoutSidenav">
                    <jsp:include page="../layout/sidebar.jsp" />
                    <div id="layoutSidenav_content">
                        <main>
                            <div class="container-fluid px-4">
                                <h1 class="mt-4" style="color: #1a2a44;">Manager Products</h1>
                                <ol class="breadcrumb mb-4">
                                    <li class="breadcrumb-item"><a href="/admin" style="color: #0288d1;">Dashboard</a>
                                    </li>
                                    <li class="breadcrumb-item active" style="color: #666;">Products</li>
                                </ol>
                                <div class="mt-5">
                                    <div class="row">
                                        <div class="col-12 mx-auto">
                                            <div class="d-flex justify-content-between align-items-center mb-3">
                                                <h3 style="color: #1a2a44;">Table Products</h3>
                                                <a href="/admin/product/create" class="btn btn-primary">
                                                    <i class="fas fa-plus me-2"></i> Create New Product
                                                </a>
                                            </div>
                                            <hr />
                                            <table class="table table-bordered table-hover">
                                                <thead>
                                                    <tr>
                                                        <th>ID</th>
                                                        <th>Name</th>
                                                        <th>Price</th>
                                                        <th>Factory</th>
                                                        <th>Category</th>
                                                        <th>Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach var="product" items="${product1}">
                                                        <tr>
                                                            <td>${product.id}</td>
                                                            <td>${product.name}</td>
                                                            <td>
                                                                <fmt:formatNumber type="number"
                                                                    value="${product.price}" /> đ
                                                            </td>
                                                            <td>${product.factory}</td>
                                                            <td>${product.category}</td>
                                                            <td>
                                                                <a href="/admin/product/${product.id}"
                                                                    class="btn btn-success btn-action">View</a>
                                                                <a href="/admin/product/update/${product.id}"
                                                                    class="btn btn-warning btn-action mx-2">Update</a>
                                                                <a href="#" class="btn btn-danger btn-action delete-btn"
                                                                    data-id="${product.id}">Delete</a>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                            <nav aria-label="Page navigation example">
                                                <ul class="pagination justify-content-center">
                                                    <li class="page-item">
                                                        <a class="${1 eq currentPage ? 'disabled page-link' : 'page-link'}"
                                                            href="/admin/product?page=${currentPage - 1}"
                                                            aria-label="Previous">
                                                            <span aria-hidden="true">«</span>
                                                        </a>
                                                    </li>
                                                    <c:forEach begin="1" end="${totalPages}" var="i">
                                                        <li class="page-item">
                                                            <a class="${i eq currentPage ? 'active page-link' : 'page-link'}"
                                                                href="/admin/product?page=${i}">
                                                                ${i}
                                                            </a>
                                                        </li>
                                                    </c:forEach>
                                                    <li class="page-item">
                                                        <a class="${totalPages eq currentPage ? 'disabled page-link' : 'page-link'}"
                                                            href="/admin/product?page=${currentPage + 1}"
                                                            aria-label="Next">
                                                            <span aria-hidden="true">»</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </nav>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </main>
                        <jsp:include page="../layout/footer.jsp" />
                    </div>
                </div>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                    crossorigin="anonymous"></script>
                <script src="/js/scripts.js"></script>
                <script>
                    // Xác nhận trước khi xóa
                    document.querySelectorAll('.delete-btn').forEach(button => {
                        button.addEventListener('click', function (e) {
                            e.preventDefault();
                            const productId = this.getAttribute('data-id');
                            if (confirm('Bạn có chắc chắn muốn xóa sản phẩm này? Hành động này không thể hoàn tác!')) {
                                window.location.href = `/admin/product/delete/${productId}`;
                            }
                        });
                    });
                </script>
            </body>

            </html>