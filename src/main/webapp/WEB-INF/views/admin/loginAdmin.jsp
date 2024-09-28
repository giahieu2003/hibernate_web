<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<style>
body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	background-color: #e9ecef;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
}

.container {
	background-color: #fff;
	padding: 30px;
	border-radius: 12px;
	box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
	width: 100%;
	max-width: 360px;
	border: 1px solid #ddd;
}

h2 {
	margin-top: 0;
	color: #333;
	font-size: 24px;
	text-align: center;
}

.form-group {
	margin-bottom: 20px;
}

.form-group label {
	display: block;
	margin-bottom: 8px;
	color: #495057;
	font-weight: 600;
}

.form-group input {
	width: 100%;
	padding: 12px;
	border: 1px solid #ced4da;
	border-radius: 8px;
	font-size: 16px;
	box-sizing: border-box;
}

.form-group input[type="checkbox"] {
	width: auto;
	margin-right: 8px;
}

button {
	background-color: #007bff;
	color: #fff;
	border: none;
	padding: 12px 20px;
	border-radius: 8px;
	cursor: pointer;
	width: 100%;
	font-size: 18px;
	transition: background-color 0.3s ease;
}

button:hover {
	background-color: #0056b3;
}

.alert {
	padding: 12px;
	margin-top: 15px;
	border-radius: 8px;
	border: 1px solid transparent;
}

.alert-danger {
	color: #721c24;
	background-color: #f8d7da;
	border-color: #f5c6cb;
}

p {
	margin: 15px 0;
	text-align: center;
}

a {
	color: #007bff;
	text-decoration: none;
	font-size: 16px;
}

a:hover {
	text-decoration: underline;
}
</style>
</head>
<body>
	<div class="container">
		<h2>Admin Login</h2>
		<f:form action="${pageContext.request.contextPath}/loginAdmin"
			method="post">
			<div class="form-group">
				<label for="accountname">AccountName</label> <input type="text"
					id="accountname" name="accountname" placeholder="Accountname" required>
			</div>
			<div class="form-group">
				<label for="password">Password</label> <input type="password"
					id="password" name="password" placeholder="Password" required>
			</div>
			<button type="submit">Log In</button>
			<c:if test="${not empty param.loginError}">
				<div class="alert alert-danger">${param.loginError}</div>
			</c:if>
		</f:form>
	</div>
</body>
</html>
