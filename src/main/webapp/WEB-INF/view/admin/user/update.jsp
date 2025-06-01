<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <meta name="description" content="Dự án PhamacyStore" />
                <meta name="author" content="VietAnh" />
                <title>Update User</title>
                <link href="/css/styles.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
                <style>
                    .btn-warning,
                    .btn-success {
                        transition: all 0.3s ease;
                    }

                    .btn-warning:hover {
                        background-color: #e0a800;
                        transform: scale(1.05);
                    }

                    .btn-success:hover {
                        background-color: #218838;
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
                                <h1 class="mt-4" style="color: #1a2a44;">Manager Users</h1>
                                <ol class="breadcrumb mb-4">
                                    <li class="breadcrumb-item"><a href="/admin" style="color: #0288d1;">Dashboard</a>
                                    </li>
                                    <li class="breadcrumb-item active" style="color: #666;">Users</li>
                                </ol>
                                <div class="container mt-5">
                                    <div class="row">
                                        <div class="col-md-6 col-12 mx-auto">
                                            <h3 style="color: #1a2a44;">Update User</h3>
                                            <hr />
                                            <form:form method="post" action="/admin/user/update"
                                                modelAttribute="newUser">
                                                <div class="mb-3" style="display: none;">
                                                    <label class="form-label">Id:</label>
                                                    <form:input type="text" class="form-control" path="id" />
                                                </div>
                                                <div class="mb-3">
                                                    <label class="form-label">Email:</label>
                                                    <form:input type="email" class="form-control" path="email"
                                                        disabled="true" />
                                                </div>
                                                <div class="mb-3">
                                                    <label class="form-label">Phone Number:</label>
                                                    <form:input type="text" class="form-control" path="phoneNumber" />
                                                </div>
                                                <div class="mb-3">
                                                    <label class="form-label">Full Name:</label>
                                                    <form:input type="text" class="form-control" path="fullName" />
                                                </div>
                                                <div class="mb-3">
                                                    <label class="form-label">Address:</label>
                                                    <form:input type="text" class="form-control" path="address" />
                                                </div>
                                                <div class="mb-3">
                                                    <label class="form-label">Role:</label>
                                                    <form:select class="form-select" path="role.name">
                                                        <form:option value="ADMIN">ADMIN</form:option>
                                                        <form:option value="USER">USER</form:option>
                                                    </form:select>
                                                </div>
                                                <div class="d-flex gap-2 mt-3">
                                                    <button type="submit" class="btn btn-warning"><i
                                                            class="fas fa-edit me-2"></i> Update</button>
                                                    <a href="/admin/user" class="btn btn-success"><i
                                                            class="fas fa-arrow-left me-2"></i> Back</a>
                                                </div>
                                            </form:form>
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
                <script src="js/scripts.js"></script>
            </body>

            </html>