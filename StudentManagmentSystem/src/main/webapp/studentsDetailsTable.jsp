<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
        integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/listUser.css"> -->        
     <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/projectListing.css">   
<title>Student Result Management System</title>
</head>
<!-- <body>
    <main class="table" id="customers_table">
        <section class="table__header">
            <h1>Student Information</h1>
        </section>
        <section class="table__body">
            <table>
                <thead>
                    <tr>
                        <th> Student ID </th>
                        <th> Student Name </th>
                        <th> Student Email </th>
                        <th> Student Password </th>
                        <th> Update </th>
                        <th> Delete </th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="std" items="${e_data}">
                        <tr>
                            <td> ${std.id} </td>
                            <td> ${std.name}</td>
                            <td> ${std.email} </td>
                            <td> ${std.password} </td>
                            <td>
                                <a id="update" href="<c:url value='/edit/${std.id}'/>">
                                <i class="fa-solid fa-pen-to-square"></i></a>
                            </td>
                            <td>
                                <a id="delete" href="<c:url value='/${std.id}'/>">
                                <i class="fa-solid fa-trash-can"></i></a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </section>
    </main>
    
</body> -->
<body>
	<div class="main">
		<div class="left-nav">
			<div class="svg-div">
				<div class="svg-img ">
					<div class="svg-active "></div>
					<a href="dashboard"><img src="../images/Dashboard.svg" /></a>
					<!--<img src="../images/Dashboard.svg"/>-->
				</div>
				<div class="svg-img active">
					<div class="svg-active "></div>
					<!--<img src="../images/Project-list.svg"/>-->
					<a href="studentsDetailsTable"><img
						src="../images/Project-list-active.svg" /></a>
				</div>
				<div class="dash"></div>

				<div class="svg-img">
					<div class="svg-active"></div>
					<a href="/addDetails"><img
						src="../images/create-project.svg" /></a>
					<!--<img src="../images/create-project-active.svg"/>-->
				</div>
			</div>
			<div class="logout-btn-div">
				<a href="/"><img src="../images/Logout.svg" /></a>

			</div>
		</div>
		<div class="right-section">
			<div class="top-bar">
				<div class="create-project-sec">
					<img src="../images/back arrow.svg">
					<h1>Students Details</h1>
				</div>
				<div class="logo">
					<img src="../images/Logo.svg">
				</div>
			</div>
			<div class="table-container">
				<div class="search-area">
					<form id="searchForm" action="/listUserSearch" method="get">
						<div class="search-box">
							<i class="fa-solid fa-magnifying-glass"></i> <input type="search"
								name="keyword" placeholder="Search" id="searchInput">
							<!-- <button type="submit" >Search</button> -->
						</div>
					</form>
					<div class="sorting-dropdown">
						<label for="sort-by">Sort by :</label> <select id="sort-by"
							onchange="sortProjects()">
							<option value="name">Name</option>
							<option value="age">Age</option>
							<option value="grade">Grade</option>
							<option value="totalMarks">Total marks</option>
							<option value="percentage">Percentage</option>

						</select>
					</div>
				</div>
				<section class="table__body">
					<table>
						<thead>
							<tr>
								<th class="p-name">Student Name</th>
								<th>Gender</th>
								<th>Age</th>
								<th>Mathematics<br>Marks</th>
								<th>Science<br> Marks</th>
								<th>English<br> Marks</th>
								<th>History<br> Marks</th>
								<th>Hindi<br>Marks</th>
								<th>Total<br> Marks</th>
								<th>Grade</th>
								<th>Percentage</th>
								<th></th>

							</tr>
						</thead>
						<tbody>
							<c:forEach var="std" items="${projects}">
								<tr>
									<td class="p-name">
										<h6>${std.name}</h6>
										<h6 class="date">${std.email}</h6>
									</td>
									
									<td>${std.gender}</td>
									<td>${std.age}</td>
									<td>${std.math}/100</td>
									<td>${std.science}/100</td>
									<td>${std.english}/100</td>
									<td>${std.history}/100</td>
									<td>${std.hindi}/100</td>
									<td>${std.totalMarks}/500</td>
									<td>${std.grade}</td>
									<td>${std.percentage}%</td>
									<td class="btnn">
										<div class="table-btn">
											<a href="<c:url value='/edit/${std.id}'/>" id="start"
												class="btn">Update</a> <a
												href="<c:url value='/${std.id}'/>" id="close"
												class="btn">Delete</a> 
										</div>

									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</section>
			</div>

			<div class="pagination-box">
				<c:if test="${totalPages > 1}">
					<nav aria-label="Page navigation example">
						<ul class="pagination">
							<li
								class="page-item manual <c:if test="${currentPage eq 0}">disabled</c:if>">
								<a class="page-link"
								href="/studentsDetailsTable?pageNo=${currentPage - 1}"
								aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
							</a>
							</li>
							<c:forEach var="pageNum" begin="0" end="${totalPages - 1}">
								<li
									class="page-item <c:if test="${currentPage eq pageNum}">active</c:if>">
									<a class="page-link"
									href="/studentsDetailsTable?pageNo=${pageNum}&pageSize=${pageSize}">${pageNum + 1}</a>
								</li>
							</c:forEach>
							<li
								class="page-item <c:if test="${currentPage eq totalPages - 1}">disabled</c:if>">
								<a class="page-link"
								href="/studentsDetailsTable?pageNo=${currentPage + 1}"
								aria-label="Next"> <span aria-hidden="true">&raquo;</span>
							</a>
							</li>
						</ul>
					</nav>
				</c:if>
			</div>
		</div>
	</div>


	<script>
		function sortProjects() {
			var selectedColumn = document.getElementById("sort-by").value;
			var searchKeyword = document.getElementById("searchInput").value;
			window.location.href = "/sort?sortBy=" + selectedColumn;
		}

		document.getElementById('searchInput').addEventListener('keypress',
				function(event) {

					if (event.keyCode === 13) {

						event.preventDefault();

						document.getElementById('searchForm').submit();
					}
				});
	</script>
</body>

</html>