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
                <title>Create User</title>
                <link href="/css/styles.css" rel="stylesheet" />
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
                <style>
                    .form-control.is-invalid {
                        border-color: #dc3545;
                    }

                    .invalid-feedback {
                        display: block;
                    }

                    .btn-primary {
                        background-color: #01579b;
                        border-color: #01579b;
                        transition: all 0.3s ease;
                    }

                    .btn-primary:hover {
                        background-color: #0288d1;
                        transform: scale(1.05);
                    }

                    #avatarPreview {
                        border: 1px solid #ddd;
                        border-radius: 5px;
                    }
                </style>
                <script>
                    $(document).ready(() => {
                        const avatarFile = $("#avatarFile");
                        avatarFile.change(function (e) {
                            const file = e.target.files[0];
                            if (file) {
                                const validTypes = ['image/png', 'image/jpeg', 'image/jpg'];
                                if (!validTypes.includes(file.type)) {
                                    alert('Vui lòng chọn file ảnh định dạng PNG, JPG hoặc JPEG!');
                                    $(this).val('');
                                    $("#avatarPreview").css({ "display": "none" });
                                    return;
                                }
                                const imgURL = URL.createObjectURL(file);
                                $("#avatarPreview").attr("src", imgURL);
                                $("#avatarPreview").css({ "display": "block" });
                            }
                        });
                    });
                </script>
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
                                <div class="mt-5">
                                    <div class="row">
                                        <div class="col-md-6 col-12 mx-auto">
                                            <h3 style="color: #1a2a44;">Create a User</h3>
                                            <hr />
                                            <form:form method="post" action="/admin/user/create"
                                                modelAttribute="newUser" class="row" enctype="multipart/form-data">
                                                <div class="mb-3 col-12 col-md-6">
                                                    <c:set var="errorEmail">
                                                        <form:errors path="email" cssClass="invalid-feedback" />
                                                    </c:set>
                                                    <label class="form-label">Email:</label>
                                                    <form:input type="email"
                                                        class="form-control ${not empty errorEmail ? 'is-invalid' : ''}"
                                                        path="email" />
                                                    ${errorEmail}
                                                </div>
                                                <div class="mb-3 col-12 col-md-6">
                                                    <c:set var="errorPassword">
                                                        <form:errors path="password" cssClass="invalid-feedback" />
                                                    </c:set>
                                                    <label class="form-label">Password:</label>
                                                    <form:input type="password"
                                                        class="form-control ${not empty errorPassword ? 'is-invalid' : ''}"
                                                        path="password" />
                                                    ${errorPassword}
                                                </div>
                                                <div class="mb-3 col-12 col-md-6">
                                                    <label class="form-label">Phone Number:</label>
                                                    <form:input type="text" class="form-control" path="phoneNumber" />
                                                </div>
                                                <div class="mb-3 col-12 col-md-6">
                                                    <c:set var="errorFullName">
                                                        <form:errors path="fullName" cssClass="invalid-feedback" />
                                                    </c:set>
                                                    <label class="form-label">Full Name:</label>
                                                    <form:input type="text"
                                                        class="form-control ${not empty errorFullName ? 'is-invalid' : ''}"
                                                        path="fullName" />
                                                    ${errorFullName}
                                                </div>
                                                <div class="mb-3 col-12 col-md-6">
                                                    <label class="form-label">Address:</label>
                                                    <form:input type="text" class="form-control" path="address" />
                                                </div>
                                                <div class="mb-3 col-12 col-md-6">
                                                    <label class="form-label">Role:</label>
                                                    <form:select class="form-select" path="role.name">
                                                        <form:option value="ADMIN">ADMIN</form:option>
                                                        <form:option value="USER">USER</form:option>
                                                    </form:select>
                                                </div>
                                                <div class="mb-3 col-12 col-md-6">
                                                    <label for="avatarFile" class="form-label">Avatar:</label>
                                                    <input class="form-control" type="file" id="avatarFile"
                                                        accept=".png, .jpg, .jpeg" name="hoidanitFile" />
                                                </div>
                                                <div class="col-12 mb-3">
                                                    <img style="max-height: 250px; display: none;" alt="avatar preview"
                                                        id="avatarPreview" />
                                                </div>
                                                <div class="col-12 mb-5">
                                                    <button type="submit" class="btn btn-primary"><i
                                                            class="fas fa-save me-2"></i> Create</button>
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