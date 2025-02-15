<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title>Display Page</title>
<style>
/* Table styling */
table {
	border: 2px solid #dee2e6;
	border-radius: 5px;
	overflow: hidden;
}

thead {
	background-color: #343a40;
	color: white;
}

tbody tr {
	background-color: #f8f9fa;
}

tbody tr:hover {
	background-color: #e9ecef;
	cursor: pointer;
}

tbody tr:nth-child(even) {
	background-color: #ffffff;
}

th, td {
	border: 1px solid #dee2e6;
	text-align: center;
	padding: 10px;
}

.container {
	background-color: #f5f5f5;
	border: 1px solid #ddd;
	padding: 20px;
	border-radius: 10px;
}

/* Style for icons */
.text-danger {
	color: red !important; /* Enforces the red color for the trash icon */
	font-size: 20px;
}

.text-primary {
	color: #007bff; /* Primary blue for the edit icon */
	font-size: 20px;
}

.text-danger:hover {
	color: darkred; /* Darker shade on hover */
}

.text-primary:hover {
	color: darkblue; /* Darker blue on hover */
}
</style>

<%@include file="./base.jsp"%>
</head>
<body>
	<div class="container mt-4">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center mb-3">Welcome to Product App</h1>
				<table class="table">
					<thead>
						<tr>
							<th scope="col">Id</th>
							<th scope="col">Product</th>
							<th scope="col">Description</th>
							<th scope="col">Price</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${products}" var="p">
							<tr>
								<th scope="row">THXS${p.id}</th>
								<td>${p.name}</td>
								<td>${p.description}</td>
								<td class="font-weight-bold">&#x20B9;${p.price}</td>
								<td><a href="delete/${p.id}"> <i
										class="fa-solid fa-trash-arrow-up text-danger"></i>
								</a> <a href="update/${p.id}"> <i
										class="fa-solid fa-pen-nib text-primary"></i>
								</a></td>

							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="container text-center">
					<a href="addproduct" class="btn btn-outline-success">Add
						Product</a>
				</div>
			</div>
		</div>
	</div>
	<!-- Optional JavaScript -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>
