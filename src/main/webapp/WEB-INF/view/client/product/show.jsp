<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
                <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

                    <!DOCTYPE html>
                    <html lang="en">

                    <head>
                        <meta charset="utf-8">
                        <title> Sản Phẩm - Pharmacy Store</title>
                        <meta content="width=device-width, initial-scale=1.0" name="viewport">
                        <meta content="" name="keywords">
                        <meta content="" name="description">

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
                    </head>

                    <body>

                        <!-- Spinner Start -->
                        <div id="spinner"
                            class="show w-100 vh-100 bg-white position-fixed translate-middle top-50 start-50  d-flex align-items-center justify-content-center">
                            <div class="spinner-grow text-primary" role="status"></div>
                        </div>
                        <!-- Spinner End -->

                        <jsp:include page="../layout/header.jsp" />

                        <!-- Single Product Start -->
                        <div class="container-fluid py-5 mt-5">
                            <div class="container py-5">
                                <div class="row g-4 mb-5">
                                    <div>
                                        <nav aria-label="breadcrumb">
                                            <ol class="breadcrumb">
                                                <li class="breadcrumb-item"><a href="/">Home</a></li>
                                                <li class="breadcrumb-item active" aria-current="page">Danh Sách Sản
                                                    Phẩm
                                                </li>
                                            </ol>
                                        </nav>
                                    </div>

                                    <div class="d-flex align-items-center">
                                        <h1 class="mb-0">Sản phẩm nổi bật</h1>
                                        <div class="dropdown ms-3">
                                            <button class="btn btn-warning dropdown-toggle" type="button"
                                                id="categoryDropdown" data-bs-toggle="dropdown" aria-expanded="false">
                                                <c:choose>
                                                    <c:when test="${not empty selectedCategory}">
                                                        ${selectedCategory}
                                                    </c:when>
                                                    <c:otherwise>
                                                        Tất cả
                                                    </c:otherwise>
                                                </c:choose>
                                            </button>
                                            <ul class="dropdown-menu" aria-labelledby="categoryDropdown">
                                                <li><a class="dropdown-item" href="/products">Tất cả</a></li>
                                                <li><a class="dropdown-item"
                                                        href="/products?category=Thuốc không kê đơn">Thuốc không kê
                                                        đơn</a>
                                                </li>
                                                <li><a class="dropdown-item"
                                                        href="/products?category=Thiết bị y tế">Thiết
                                                        bị y tế</a></li>
                                                <li><a class="dropdown-item"
                                                        href="/products?category=Chăm sóc cá nhân">Chăm
                                                        sóc cá nhân</a></li>
                                                <li><a class="dropdown-item"
                                                        href="/products?category=Thuốc kê đơn">Thuốc kê
                                                        đơn</a></li>
                                                <li><a class="dropdown-item" href="/products?category=Dược mỹ phẩm">Dược
                                                        mỹ
                                                        phẩm</a></li>
                                                <li><a class="dropdown-item"
                                                        href="/products?category=Thực phẩm chức năng">Thực phẩm chức
                                                        năng</a></li>
                                            </ul>
                                        </div>
                                    </div>

                                    <div class="row g-4 fruite">
                                        <div class="col-12 col-md-4">
                                            <div class="row g-4">
                                                <div class="col-12" id="factoryFilter">
                                                    <div class="mb-2"><b>Hãng sản xuất</b></div>
                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="checkbox" id="factory-1"
                                                            value="Pháp">
                                                        <label class="form-check-label" for="factory-1">Pháp</label>
                                                    </div>
                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="checkbox" id="factory-2"
                                                            value="Hoa Kỳ">
                                                        <label class="form-check-label" for="factory-2">Hoa Kỳ</label>
                                                    </div>

                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="checkbox" id="factory-3"
                                                            value="Ấn Độ">
                                                        <label class="form-check-label" for="factory-3">Ấn Độ</label>
                                                    </div>

                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="checkbox" id="factory-4"
                                                            value="Việt Nam">
                                                        <label class="form-check-label" for="factory-4">Việt Nam</label>
                                                    </div>
                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="checkbox" id="factory-5"
                                                            value="Hà Lan">
                                                        <label class="form-check-label" for="factory-5">Hà Lan</label>
                                                    </div>
                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="checkbox" id="factory-6"
                                                            value="Đức">
                                                        <label class="form-check-label" for="factory-6">Đức</label>
                                                    </div>
                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="checkbox" id="factory-7"
                                                            value="Nhật Bản">
                                                        <label class="form-check-label" for="factory-7">Nhật Bản</label>
                                                    </div>
                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="checkbox" id="factory-8"
                                                            value="Đan Mạch">
                                                        <label class="form-check-label" for="factory-8">Đan Mạch</label>
                                                    </div>
                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="checkbox" id="factory-9"
                                                            value="Hàn Quốc">
                                                        <label class="form-check-label" for="factory-9">Hàn Quốc</label>
                                                    </div>
                                                </div>
                                                <c:if test="${empty selectedCategory}">
                                                    <div class="col-12" id="targetFilter">
                                                        <div class="mb-2"><b>Mục đích sử dụng</b></div>
                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input" type="checkbox"
                                                                id="target-1" value="THUC-PHAM-CHUC-NANG">
                                                            <label class="form-check-label" for="target-1">Thực phẩm
                                                                chức
                                                                năng</label>
                                                        </div>

                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input" type="checkbox"
                                                                id="target-2" value="DUOC-MY-PHAM">
                                                            <label class="form-check-label" for="target-2">Dược mỹ phẩm
                                                            </label>
                                                        </div>
                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input" type="checkbox"
                                                                id="target-3" value="THUOC-KE-DON">
                                                            <label class="form-check-label" for="target-3">Thuốc kê đơn
                                                            </label>
                                                        </div>
                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input" type="checkbox"
                                                                id="target-4" value="CHAM-SONG-CA-NHAN">
                                                            <label class="form-check-label" for="target-4">Chăm sóc cá
                                                                nhân</label>
                                                        </div>
                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input" type="checkbox"
                                                                id="target-5" value="THIET-BI-Y-TE">
                                                            <label class="form-check-label" for="target-5">Thiết bị y tế
                                                            </label>
                                                        </div>
                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input" type="checkbox"
                                                                id="target-6" value="THUOC-KHONG-KE-DON">
                                                            <label class="form-check-label" for="target-6">Thuốc không
                                                                kê
                                                                đơn
                                                            </label>
                                                        </div>
                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input" type="checkbox"
                                                                id="target-7" value="THUOC-DAC-TRI">
                                                            <label class="form-check-label" for="target-7">Thuốc đặc trị

                                                            </label>
                                                        </div>


                                                    </div>
                                                </c:if>
                                                <div class="col-12" id="priceFilter">
                                                    <div class="mb-2"><b>Mức giá</b></div>

                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="checkbox" id="price-2"
                                                            value="duoi-100-ngan">
                                                        <label class="form-check-label" for="price-2">Dưới 100
                                                            ngàn</label>
                                                    </div>

                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="checkbox" id="price-3"
                                                            value="100-300-ngan">
                                                        <label class="form-check-label" for="price-3">Từ 100 - 300
                                                            ngàn</label>
                                                    </div>

                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="checkbox" id="price-4"
                                                            value="300-600-ngan">
                                                        <label class="form-check-label" for="price-4">Từ 300 - 600
                                                            ngàn</label>
                                                    </div>

                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="checkbox" id="price-5"
                                                            value="tren-600-ngan">
                                                        <label class="form-check-label" for="price-5">Trên 600
                                                            ngàn</label>
                                                    </div>
                                                </div>
                                                <div class="col-12">
                                                    <div class="mb-2"><b>Sắp xếp</b></div>

                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="radio" id="sort-1"
                                                            value="gia-tang-dan" name="radio-sort">
                                                        <label class="form-check-label" for="sort-1">Giá tăng
                                                            dần</label>
                                                    </div>

                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="radio" id="sort-2"
                                                            value="gia-giam-dan" name="radio-sort">
                                                        <label class="form-check-label" for="sort-2">Giá giảm
                                                            dần</label>
                                                    </div>

                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="radio" id="sort-3" checked
                                                            value="gia-nothing" name="radio-sort">
                                                        <label class="form-check-label" for="sort-3">Không sắp
                                                            xếp</label>
                                                    </div>

                                                </div>
                                                <div class="col-12">
                                                    <button
                                                        class="btn border-secondary rounded-pill px-4 py-3 text-primary text-uppercase mb-4"
                                                        id="btnFilter">
                                                        Lọc Sản Phẩm
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12 col-md-8 text-center">
                                            <div class="row g-4">
                                                <c:if test="{$totalPages > 0}">
                                                    <div>Không tìm thấy sản phẩm</div>
                                                </c:if>

                                                <c:forEach var="product" items="${products}">
                                                    <div class="col-md-6 col-lg-4">
                                                        <div class="rounded position-relative fruite-item"
                                                            style="border-top: 2px solid #ffffff; border-bottom: 2px solid #01579b; border-left: 2px solid #ffffff; border-right: 2px solid #ffffff; min-height: 400px; position: relative;">
                                                            <div class="fruite-img">
                                                                <img src="/images/product/${product.image_folder}/${product.image}"
                                                                    ... class="img-fluid w-100 rounded-top" alt="">
                                                            </div>
                                                            <div class="text-white bg-secondary px-3 py-1 rounded position-absolute"
                                                                style="top: 10px; left: 10px;">Phamacy
                                                            </div>
                                                            <div class="p-4 rounded-bottom">
                                                                <h4 style="font-size: 15px;">
                                                                    <a href="/product/${product.id}">
                                                                        ${product.name}
                                                                    </a>

                                                                </h4>
                                                                <p style="font-size: 13px;">
                                                                    ${product.shortDesc}</p>
                                                                <div
                                                                    class="d-flex  flex-lg-wrap justify-content-center flex-column">
                                                                    <p style="font-size: 15px; text-align: center; width: 100%;"
                                                                        class="text-dark  fw-bold mb-3">
                                                                        <fmt:formatNumber type="number"
                                                                            value="${product.price}" />
                                                                        đ
                                                                    </p>
                                                                    <form action="/add-product-to-cart/${product.id}"
                                                                        method="post">
                                                                        <input type="hidden"
                                                                            name="${_csrf.parameterName}"
                                                                            value="${_csrf.token}" />
                                                                        <button
                                                                            class="mx-auto btn border border-secondary rounded-pill px-2 text-primary"
                                                                            style="position: absolute; left: 50%; transform: translateX(-50%); bottom: 5px;"><i
                                                                                class="fa fa-shopping-bag me-2 text-primary"></i>
                                                                            Add to cart
                                                                        </button>
                                                                    </form>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </c:forEach>
                                                <c:if test="${totalPages > 1}">
                                                    <div class="pagination d-flex justify-content-center mt-5">
                                                        <li class="page-item">
                                                            <a class="${currentPage == 1 ? 'disabled page-link' : 'page-link'}"
                                                                href="/products?page=${currentPage - 1}<c:if test='${not empty selectedCategory}'>6category=${selectedCategory}</c:if>"
                                                                aria-label="Previous">
                                                                <span aria-hidden="true">&laquo;</span>
                                                            </a>
                                                        </li>
                                                        <c:forEach begin="1" end="${totalPages}" var="i">
                                                            <li class="page-item">
                                                                <a class="${i eq currentPage ? 'active page-link' : 'page-link'}"
                                                                    href="/products?page=${i}<c:if test='${not empty selectedCategory}'>6category=${selectedCategory}</c:if>">
                                                                    ${i}
                                                                </a>
                                                            </li>
                                                        </c:forEach>
                                                        <li class="page-item">
                                                            <a class="${currentPage == totalPages ? 'disabled page-link' : 'page-link'}"
                                                                href="/products?page=${currentPage + 1}<c:if test='${not empty selectedCategory}'>6category=${selectedCategory}</c:if>"
                                                                aria-label="Next">
                                                                <span aria-hidden="true">&raquo;</span>
                                                            </a>
                                                        </li>
                                                    </div>
                                                </c:if>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Single Product End -->

                        <jsp:include page="../layout/footer.jsp" />


                        <!-- Back to Top -->
                        <a href="#" class="btn btn-primary border-3 border-primary rounded-circle back-to-top"><i
                                class="fa fa-arrow-up"></i></a>


                        <!-- JavaScript Libraries -->
                        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
                        <script
                            src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
                        <script src="/client/lib/easing/easing.min.js"></script>
                        <script src="/client/lib/waypoints/waypoints.min.js"></script>
                        <script src="/client/lib/lightbox/js/lightbox.min.js"></script>
                        <script src="/client/lib/owlcarousel/owl.carousel.min.js"></script>

                        <!-- Template Javascript -->
                        <script src="/client/js/main.js"></script>

                        <p>Đang lọc theo: ${selectedCategory}</p>
                        <p>Số sản phẩm: ${fn:length(products)}</p>
                    </body>

                    </html>