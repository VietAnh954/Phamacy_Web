<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="vi">

        <head>
            <meta charset="utf-8" />
            <meta http-equiv="X-UA-Compatible" content="IE=edge" />
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
            <title>Bảng Điều Khiển</title>
            <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
            <link href="/css/styles.css" rel="stylesheet" />
            <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
            <style>
                .card {
                    transition: all 0.3s ease;
                    border: none;
                    border-radius: 10px;
                    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
                }

                .card:hover {
                    transform: translateY(-5px);
                    box-shadow: 0 5px 20px rgba(0, 0, 0, 0.2);
                }

                .card-footer a {
                    transition: all 0.3s ease;
                }

                .card-footer a:hover {
                    color: #fff !important;
                    text-decoration: underline;
                }

                .bg-primary {
                    background-color: #01579b !important;
                }

                .bg-danger {
                    background-color: #d32f2f !important;
                }

                .bg-success {
                    background-color: #388e3c !important;
                }

                .current-time {
                    font-size: 14px;
                    color: #666;
                    margin-bottom: 20px;
                }

                .activity-log {
                    max-height: 300px;
                    overflow-y: auto;
                    padding-right: 10px;
                }

                .activity-item {
                    padding: 10px;
                    border-bottom: 1px solid #eee;
                    display: flex;
                    align-items: center;
                    gap: 10px;
                }

                .activity-item:last-child {
                    border-bottom: none;
                }

                .activity-item i {
                    font-size: 18px;
                }

                @media (max-width: 768px) {
                    .card-body {
                        font-size: 14px;
                    }

                    .card-footer a {
                        font-size: 12px;
                    }

                    .activity-log {
                        max-height: 200px;
                    }

                    .activity-item {
                        font-size: 14px;
                    }
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
                            <h1 class="mt-4" style="color: #1a2a44;">Bảng Điều Khiển</h1>
                            <ol class="breadcrumb mb-2">
                                <li class="breadcrumb-item active" style="color: #666;">Thống Kê Sơ Bộ</li>
                            </ol>
                            <div class="current-time">
                                Cập nhật lúc: <span id="currentTime"></span>
                            </div>
                            <div class="row">
                                <div class="col-xl-4 col-md-6">
                                    <div class="card bg-primary text-white mb-4">
                                        <div class="card-body">Số lượng Người Dùng (${countUsers})</div>
                                        <div class="card-footer d-flex align-items-center justify-content-between">
                                            <a class="small text-white stretched-link" href="/admin/user">Xem Chi
                                                Tiết</a>
                                            <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-4 col-md-6">
                                    <div class="card bg-danger text-white mb-4">
                                        <div class="card-body">Số lượng Sản Phẩm (${countProducts})</div>
                                        <div class="card-footer d-flex align-items-center justify-content-between">
                                            <a class="small text-white stretched-link" href="/admin/product">Xem Chi
                                                Tiết</a>
                                            <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-4 col-md-6">
                                    <div class="card bg-success text-white mb-4">
                                        <div class="card-body">Số lượng Đơn Hàng (${countOrders})</div>
                                        <div class="card-footer d-flex align-items-center justify-content-between">
                                            <a class="small text-white stretched-link" href="/admin/order">Xem Chi
                                                Tiết</a>
                                            <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Biểu đồ
                            <div class="row mt-5">
                                <div class="col-12">
                                    <h3 style="color: #1a2a44;">Biểu Đồ Thống Kê</h3>
                                    <hr />
                                    <div class="card">
                                        <div class="card-body">
                                            <canvas id="statsChart" style="max-height: 400px;"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div> -->

                            <!-- Nhật ký hoạt động gần đây -->
                            <div class="row mt-5">
                                <div class="col-12">
                                    <h3 style="color: #1a2a44;">Hoạt Động Gần Đây</h3>
                                    <hr />
                                    <div class="card">
                                        <div class="card-body activity-log">
                                            <c:if test="${empty recentActivities}">
                                                <p class="text-muted">Không có hoạt động nào gần đây.</p>
                                            </c:if>
                                            <c:forEach var="activity" items="${recentActivities}">
                                                <div class="activity-item">
                                                    <i class="fas fa-info-circle text-primary"></i>
                                                    <span class="text-muted">${activity.timestamp}</span> -
                                                    <strong>${activity.user}</strong> đã ${activity.action}
                                                    <a href="${activity.link}"
                                                        class="text-primary">${activity.target}</a>
                                                </div>
                                            </c:forEach>
                                        </div>
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
            <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
                crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
                crossorigin="anonymous"></script>
            <script src="/js/datatables-simple-demo.js"></script>
            <script>
                // Cập nhật thời gian thực
                function updateTime() {
                    const now = new Date();
                    const options = {
                        year: 'numeric', month: 'long', day: 'numeric',
                        hour: '2-digit', minute: '2-digit', second: '2-digit',
                        hour12: false, timeZone: 'Asia/Ho_Chi_Minh'
                    };
                    document.getElementById('currentTime').textContent = now.toLocaleString('vi-VN', options);
                }
                updateTime();
                setInterval(updateTime, 1000);

                // // Biểu đồ Chart.js
                // const ctx = document.getElementById('statsChart').getContext('2d');
                // new Chart(ctx, {
                //     type: 'bar',
                //     data: {
                //         labels: ['Người Dùng', 'Sản Phẩm', 'Đơn Hàng'],
                //         datasets: [{
                //             label: 'Số lượng',
                //             data: [${ countUsers }, ${ countProducts }, ${ countOrders }],
                //             backgroundColor: ['#01579b', '#d32f2f', '#388e3c'],
                //             borderColor: ['#013f6f', '#9a1c1c', '#2c6b2f'],
                //             borderWidth: 1
                //         }]
                //     },
                //     options: {
                //         scales: {
                //             y: {
                //                 beginAtZero: true,
                //                 ticks: { stepSize: 1 }
                //             }
                //         },
                //         plugins: {
                //             legend: { display: false },
                //             title: {
                //                 display: true,
                //                 text: 'Thống Kê Số Lượng',
                //                 font: { size: 16 }
                //             }
                //         },
                //         responsive: true,
                //         maintainAspectRatio: false
                //     }
                // });
            </script>
        </body>

        </html>