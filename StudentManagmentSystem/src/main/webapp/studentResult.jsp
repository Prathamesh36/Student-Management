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
	href="${pageContext.request.contextPath}/css/StudentResult.css">

<title>Student Result Management System</title>
</head>
<body>
	 <div class="main-container">
		<div class="center-container">
			<div class="logo-container">
				<div class="logo">
					<img src="../images/Logo.svg">
				</div>
				<div class="opm">
					
				</div>
			</div>
			<div class="form-container">
				<div class="top">
					<h1 class="heading">Result</h1>
				</div>
                <table>
				<thead>
					<tr>

						<th>Student Name</th>
						<th>Student Email</th>
						<th>Mathematics </th>
						<th>English </th>
                        <th>Science </th>
                        <th>History </th>
                        <th>Hindi </th>
                        <th>Grade </th>
                        <th>Percentage </th>

					</tr>
				</thead>
				<tbody>

					<tr>

						<td>${std.name }</td>
						<td>${std.email }</td>
						<td>${std.math }</td>
                        <td>${std.english }</td>
                        <td>${std.science }</td>
                        <td>${std.history }</td>
                        <td>${std.hindi }</td>
                        <td>${std.grade }</td>
                        <td>${std.percentage }%</td>
						
					</tr>

				</tbody>
            </table>
			</div>
		</div>
	</div>

</body>
</html>