<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <div id="layoutSidenav_nav">
            <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                <div class="sb-sidenav-menu">
                    <div class="nav">
                        <div class="sb-sidenav-menu-heading">Chức năng</div>
                        <a class="nav-link" href="/admin">
                            <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                            Bảng Điều Khiển
                        </a>
                        <a class="nav-link" href="/admin/user">
                            <div class="sb-nav-link-icon"><i class="fas fa-users"></i></div>
                            Người Dùng
                        </a>
                        <a class="nav-link" href="/admin/product">
                            <div class="sb-nav-link-icon"><i class="fas fa-box-open"></i></div>
                            Sản Phẩm
                        </a>
                        <a class="nav-link" href="/admin/order">
                            <div class="sb-nav-link-icon"><i class="fas fa-shopping-cart"></i></div>
                            Đơn Hàng
                        </a>
                    </div>
                </div>
                <div class="sb-sidenav-footer">
                    <div class="small">Đăng nhập với vai trò:</div>
                    Admin
                </div>
            </nav>
        </div>
        <style>
            .sb-sidenav-dark {
                background-color: #1a2a44 !important;
            }

            .sb-sidenav-menu-heading {
                color: #a1c4fd;
                font-size: 14px;
                text-transform: uppercase;
            }

            .nav-link {
                color: #ffffff !important;
                transition: all 0.3s ease;
            }

            .nav-link:hover {
                background-color: #2c3e50;
                color: #4da8da !important;
            }

            .nav-link .sb-nav-link-icon {
                margin-right: 10px;
            }

            .sb-sidenav-footer {
                color: #a1c4fd;
                background-color: #16253d;
            }

            @media (max-width: 992px) {
                .sb-sidenav-menu-heading {
                    font-size: 12px;
                }

                .nav-link {
                    font-size: 14px;
                }
            }
        </style>