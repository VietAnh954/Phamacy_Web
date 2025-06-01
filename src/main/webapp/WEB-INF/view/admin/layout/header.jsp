<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand -->
            <a class="navbar-brand ps-3" href="/admin">Phamacy Store</a>
            <!-- Sidebar Toggle -->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!">
                <i class="fas fa-bars"></i>
            </button>
            <span style="color: white;">Chào mừng, Admin</span>

            <!-- Navbar Search -->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                <div class="input-group ms-3">
                    <input class="form-control" type="text" placeholder="Tìm kiếm..." aria-label="Tìm kiếm..."
                        aria-describedby="btnNavbarSearch" />
                    <button class="btn btn-primary" id="btnNavbarSearch" type="button">
                        <i class="fas fa-search"></i>
                    </button>
                </div>
            </form>
            <!-- Navbar -->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button"
                        data-bs-toggle="dropdown" aria-expanded="false">
                        <i class="fas fa-user fa-fw"></i> Admin
                    </a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="/admin/profile">Hồ sơ</a></li>
                        <li><a class="dropdown-item" href="/admin/settings">Cài đặt</a></li>
                        <li>
                            <hr class="dropdown-divider" />
                        </li>
                        <li>
                            <form action="/logout" method="post">
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                <button class="dropdown-item" type="submit">Đăng xuất</button>
                            </form>
                        </li>
                    </ul>
                </li>
            </ul>
        </nav>
        <style>
            .navbar {
                background-color: #1a2a44 !important;
                box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
            }

            .navbar-brand {
                font-weight: bold;
                transition: all 0.3s ease;
            }

            .navbar-brand:hover {
                color: #4da8da !important;
            }

            .input-group .form-control {
                border-radius: 5px 0 0 5px;
            }

            .input-group .btn-primary {
                border-radius: 0 5px 5px 0;
                background-color: #01579b;
                border-color: #01579b;
                transition: all 0.3s ease;
            }

            .input-group .btn-primary:hover {
                background-color: #0288d1;
                transform: scale(1.05);
            }

            .dropdown-menu {
                border-radius: 5px;
                box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            }

            .dropdown-item {
                transition: all 0.3s ease;
            }

            .dropdown-item:hover {
                background-color: #f8f9fa;
                color: #01579b;
            }

            @media (max-width: 768px) {
                .navbar-brand {
                    font-size: 16px;
                }

                .input-group {
                    display: none;
                }
            }
        </style>