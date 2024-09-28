<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html>

<head>
    <meta charset="UTF-8">
    <title>Admin</title>
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="${pageContext.servletContext.contextPath}/resources/ckeditor/ckeditor.js"></script>
    <style>
        .table td, .table th {
            text-align: center;
        }
        .table img {
            max-width: 100px; /* Adjust as needed */
            height: auto;
        }
        .table-responsive {
            display: flex;
            justify-content: center;
        }
    </style>
</head>

<body>

    <!-- Header -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark mb-4">
        <a class="navbar-brand" href="admin">Admin</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
		    <ul class="navbar-nav mr-auto">
		        <li class="nav-item">
		            <a class="nav-link" href="#">Dashboard</a>
		        </li>
		        <li class="nav-item">
		            <a class="nav-link" href="products">Products</a>
		        </li>
		        <!-- <li class="nav-item">
		            <a class="nav-link" href="logout">Logout</a>
		        </li> -->
		    </ul>
		    <ul class="navbar-nav ml-auto">
		        <c:choose>
		            <c:when test="${!empty sessionScope.accountid}">
		                <li class="nav-item">
		                    <a href="" class="nav-link"><span>${sessionScope.accountname}</span></a>
		                </li>
		                <li class="nav-item">
		                    <a class="nav-link" href="${pageContext.request.contextPath}/logoutAdmin"><span>Đăng xuất</span></a>
		                </li>
		            </c:when>
		            <c:otherwise>
		                <!-- Empty list item or other content for unauthenticated users -->
		            </c:otherwise>
		        </c:choose>
		    </ul>
		</div>
    </nav>

    <div class="container-fluid">
        <h1 class="text-center my-4">Quản lý sản phẩm</h1>

        <form action="search" method="post" class="mb-3">
            <div class="form-row justify-content-center align-items-center">
                <div class="col-auto">
                    <input type="text" class="form-control mb-2" name="searchname" placeholder="Nhập tên cần tìm" />
                </div>
                <div class="col-auto">
                    <button type="submit" class="btn btn-info mb-2">Tìm</button>
                </div>
                <div class="col-auto">
                    <a class="btn btn-primary mb-2" href="addproduct">Thêm mới</a>
                </div>
            </div>
        </form>

        <hr />

        <div class="table-responsive">
            <table class="table table-bordered mx-auto">
                <thead class="thead-light">
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Price</th>
                        <th>Sale Price</th>
                        <th>Image</th>
                        <th>Content</th>
                        <th>Category</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="p" items="${products}">
                        <tr>
                            <td>${p.id}</td>
                            <td>${p.name}</td>
                            <td>${p.price}</td>
                            <td>${p.salePrice}</td>
                            <td><img src="resources/images/product/${p.image}" alt="Product Image"/></td>
                            <td>${p.content}</td>
                            <td>${p.category.name}</td>
                            <td>
                                <c:choose>
                                    <c:when test="${p.status == 1}">On</c:when>
                                    <c:otherwise>Off</c:otherwise>
                                </c:choose>
                            </td>
                            <td>
                                <a class="btn btn-danger" href="delete?id=${p.id}" onclick="return confirm('Bạn có muốn xóa không?')">Xóa</a>
                                <a class="btn btn-success" href="edit?id=${p.id}">Sửa</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"></script>
</body>

</html>
