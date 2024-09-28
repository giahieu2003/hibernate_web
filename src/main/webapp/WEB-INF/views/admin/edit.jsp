<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>

<html>

<head>
<meta charset="UTF-8">
<title>Sửa</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<style>
.form-container {
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
}

.form-group label {
	text-align: right;
}

.form-control-file {
	padding: 0.375rem 0.75rem;
}
</style>
</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark mb-4">
		<a class="navbar-brand" href="admin">Admin</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="#">Dashboard</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="products">Products</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="logout">Logout</a>
				</li>
			</ul>
		</div>
	</nav>
	<div class="container form-container">
		<div class="col-md-8">
			<h1 class="my-4 text-center">Sửa sản phẩm ${product.id}</h1>

			<f:form action="update" method="post" modelAttribute="product"
				enctype="multipart/form-data">
				<input type="hidden" name="imageOld" value="${product.image}" />
				
				<div class="form-group row">
					<label for="name" class="col-sm-4 col-form-label" hidden>Id</label>
					<div class="col-sm-8">
						<f:input path="id" class="form-control" id="id" type="hidden"/>
					</div>
				</div>

				<div class="form-group row">
					<label for="name" class="col-sm-4 col-form-label">Name</label>
					<div class="col-sm-8">
						<f:input path="name" class="form-control" id="name" />
					</div>
				</div>

				<div class="form-group row">
					<label for="price" class="col-sm-4 col-form-label">Price</label>
					<div class="col-sm-8">
						<f:input path="price" class="form-control" id="price" />
					</div>
				</div>

				<div class="form-group row">
					<label for="salePrice" class="col-sm-4 col-form-label">Sale
						Price</label>
					<div class="col-sm-8">
						<f:input path="salePrice" class="form-control" id="salePrice" />
					</div>
				</div>

				<div class="form-group row">
					<label for="file" class="col-sm-4 col-form-label">Image</label>
					<div class="col-sm-8">
						<input type="file" name="file" class="form-control-file" id="file" />
						<small class="form-text text-muted">Current image: <img
							src="resources/images/product/${product.image}" width="100" /></small>
					</div>
				</div>

				<div class="form-group row">
					<label for="content" class="col-sm-4 col-form-label">Content</label>
					<div class="col-sm-8">
						<textarea name="content" class="form-control" id="content"
							rows="5">${product.content}</textarea>
					</div>
				</div>

				<div class="form-group row">

					<label for="category" class="col-sm-4 col-form-label">Category</label>
					<div class="col-sm-8">
						<f:select path="category.id" class="form-control" id="category">
							<f:options items="${category}" itemValue="id" itemLabel="name" />
						</f:select>
					</div>
				</div>
				<div class="form-group row">
					<label for="status" class="col-sm-4 col-form-label">Status</label>
					<div class="col-sm-8">
						<select name="status" class="form-control" id="status">
							<option value="1" ${product.status == 1 ? 'selected' : ''}>On</option>
							<option value="0" ${product.status == 0 ? 'selected' : ''}>Off</option>
						</select>
					</div>
				</div>

				<div class="form-group row">
					<div class="col-sm-12 text-center">
						<button type="submit" class="btn btn-primary">Cập nhật</button>
						<a href="admin" class="btn btn-secondary">Trở về</a>
					</div>
				</div>

			</f:form>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"></script>
</body>

</html>
