<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Product Page</title>
<%@include file="./base.jsp"%>
<style>
.form-control::placeholder {
	font-size: 10px; /* Adjust placeholder font size */
	color: #6c757d;
}

.form-control {
	border: 2px solid #ced4da;
	border-radius: 5px;
	padding: 8px; /* Ensure proper padding around input text */
	box-sizing: border-box; /* Include padding in total width */
}

.form-group {
	margin-bottom: 15px;
}

.card {
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.btn {
	margin: 4px;
}
</style>
</head>
<body>
	<div class="mx-auto" style="width: 500px;">
		<div class="card text-white bg-dark mb-3 mt-5"
			style="max-width: 38rem;">

			<h2>
				<div class="card-body text-center" style="color: brown;">Fill
					the product details</div>
			</h2>


			<form action="handle" method="post">
				<div class="form-group">
					<label for="exampleInputName1">Product Name</label> <input
						type="text" class="form-control" id="exampleInputName1"
						aria-describedby="nameHelp" placeholder="Product name" name="name">
				</div>
				<div class="form-group">
					<label for="exampleInputDescription1">Description</label>
					<textarea class="form-control" id="exampleInputDescription1"
						rows="3" placeholder="Product description" name="description"></textarea>
				</div>
				<div class="form-group">
					<label for="exampleInputPrice1">Price</label> <input type="number"
						class="form-control" id="exampleInputPrice1"
						aria-describedby="priceHelp" placeholder="Product price"
						name="price">
				</div>

				<div class="container text-center"></div>

				<a href="${pageContext.request.contextPath }/"
					class="btn btn-outline-danger">Back</a>
				<button type="submit" class="btn btn-primary">Add</button>
			</form>
		</div>
	</div>
</body>
</html>
