<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/listUser.css">

<title>Student Information</title>
</head>
<body>
	<main class="table" id="customers_table">
		<section class="table__header">
			<h1>Student Information</h1>
		</section>
		<section class="table__body">
			<table>
				<thead>
					<tr>
						<th>Student ID</th>
						<th>Student Name</th>
						<th>Student Email</th>
						<th>Student Password</th>
						<th>Update</th>
						<th>Delete</th>
					</tr>
				</thead>
				<tbody>

					<tr>
						<td>${std.id}</td>
						<td>${std.name}</td>
						<td>${std.email}</td>
						<td>${std.password}</td>
						<td><a id="update" href="<c:url value='/edit/${std.id}'/>">
								<i class="fa-solid fa-pen-to-square"></i>
						</a></td>
						<td><a id="delete" href="<c:url value='/${std.id}'/>"> <i
								class="fa-solid fa-trash-can"></i></a></td>
					</tr>

				</tbody>
			</table>
		</section>
	</main>

</body>
</html>