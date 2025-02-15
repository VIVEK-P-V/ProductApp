<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Product Page</title>
<%@include file="./base.jsp"%>
<style>
body {
	font-family: 'Roboto', sans-serif;
	background: linear-gradient(to bottom right, #6a11cb, #2575fc);
	/* Cool gradient background */
	color: #ffffff;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
}

.card {
	background: #ffffff; /* Light card background */
	color: #333333; /* Dark text for contrast */
	border-radius: 15px;
	box-shadow: 0 8px 15px rgba(0, 0, 0, 0.2); /* Soft shadow for depth */
	padding: 30px;
	max-width: 400px;
	width: 100%;
}

.card h2 {
	font-size: 1.8rem;
	color: #ff6f61; /* Coral color for the heading */
	text-align: center;
	margin-bottom: 20px;
	text-shadow: 1px 1px 5px rgba(0, 0, 0, 0.1);
}

label {
	font-size: 0.9rem;
	font-weight: bold;
	color: #555555; /* Muted dark text for labels */
	margin-bottom: 5px;
	display: block;
}

.form-control {
	width: 100%;
	padding: 12px;
	margin: 8px 0;
	border: 1px solid #ddd;
	border-radius: 25px;
	background: #f9f9f9; /* Light input background */
	font-size: 0.9rem;
	color: #333333;
	transition: all 0.3s ease;
}

.form-control:focus {
	outline: none;
	border-color: #6a11cb; /* Highlight border on focus */
	box-shadow: 0 0 8px rgba(106, 17, 203, 0.3); /* Glow effect */
	background: #ffffff;
}

textarea.form-control {
	resize: none; /* Prevent resizing */
	height: 80px;
}

.btn {
	width: 48%;
	padding: 10px;
	border-radius: 25px;
	border: none;
	font-size: 0.9rem;
	font-weight: bold;
	cursor: pointer;
	transition: all 0.3s ease;
	margin-top: 10px;
}

.btn-outline-danger {
	background: transparent;
	color: #ff6f61; /* Coral color */
	border: 2px solid #ff6f61;
}

.btn-outline-danger:hover {
	background: #ff6f61;
	color: #ffffff;
}

.btn-primary {
	background: #2575fc; /* Vibrant blue for primary button */
	color: #ffffff;
	border: none;
}

.btn-primary:hover {
	background: #1a5bb8;
	box-shadow: 0 0 10px rgba(37, 117, 252, 0.5); /* Glow effect */
}

.container {
	text-align: center;
}

.mx-auto {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100%;
}
</style>

</head>
<body>
	<div class="mx-auto" style="width: 500px;">
		<div class="card text-white bg-dark mb-3 mt-5"
			style="max-width: 38rem;">
			<h2>
				<div class="card-body text-center" style="color: red;">Update
					the Product Details</div>
			</h2>

			<form action="${pageContext.request.contextPath}/form" method="post">

				<input type="hidden" class="form-control" name="id"
					value="${products.id}">


				<div class="form-group">
					<label for="productName">Product Name</label> <input type="text"
						class="form-control" id="productName" name="name"
						placeholder="Product name" value="${products.name}" required>
				</div>


				<div class="form-group">
					<label for="productDescription">Description</label>
					<textarea class="form-control" id="productDescription"
						name="description" placeholder="Product description" rows="3"
						required>${products.description}</textarea>
				</div>


				<div class="form-group">
					<label for="productPrice">Price</label> <input type="number"
						class="form-control" id="productPrice" name="price"
						placeholder="Product price" value="${products.price}" required>
				</div>

				<div class="container text-center"></div>


				<a href="${pageContext.request.contextPath}/"
					class="btn btn-outline-danger">Back</a>
				<button type="submit" class="btn btn-primary">Update</button>
			</form>
		</div>
	</div>
</body>
</html>
