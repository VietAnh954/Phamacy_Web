<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <footer class="py-4 bg-light mt-auto">
            <div class="container-fluid px-4">
                <div class="d-flex align-items-center justify-content-between small">
                    <div class="text-muted">Bản quyền © Phamacy Store 2025</div>
                    <div class="d-flex gap-3">
                        <a href="/about" class="text-muted text-decoration-none">Về chúng tôi</a>
                        <a href="/contact" class="text-muted text-decoration-none">Liên hệ</a>
                        <a href="/privacy" class="text-muted text-decoration-none">Chính sách bảo mật</a>
                    </div>
                </div>
            </div>
        </footer>
        <style>
            footer {
                border-top: 1px solid #ddd;
                background-color: #f8f9fa !important;
            }

            footer a {
                transition: all 0.3s ease;
            }

            footer a:hover {
                color: #01579b !important;
                text-decoration: underline !important;
            }

            @media (max-width: 576px) {
                footer .d-flex {
                    flex-direction: column;
                    gap: 10px;
                    text-align: center;
                }
            }
        </style>