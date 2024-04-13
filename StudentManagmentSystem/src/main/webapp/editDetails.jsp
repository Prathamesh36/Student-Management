<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Result Management System</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/addDetails.css">
 <link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
</head>

<body>
	<div class="main">
		<div class="left-nav">
			<div class="svg-div">
				<div class="svg-img ">
					<div class="svg-active "></div>
					<a href="dashboard"><img src="../images/Dashboard.svg" /></a>
					<!--<img src="../images/Dashboard.svg"/>-->
				</div>
				<div class="svg-img ">
					<div class="svg-active "></div>
					<a href="/get"><img src="../images/Project-list.svg" /></a>
					<!--<img src="../images/Project-list-active.svg" />-->
				</div>
				<div class="dash"></div>

				<div class="svg-img active">
					<div class="svg-active"></div>
					<!--<img src="../images/create-project.svg" />-->
					<a href="Registration"><img
						src="../images/create-project-active.svg" /></a>
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
					<h1>Create Project</h1>
				</div>
				<div class="logo">
					<img src="../images/Logo.svg">
				</div>
			</div>
			<div class="form-container">
				<form action="/update/${std1.id}" method="post">
					
					<div class="top-section">
						<h1>Edit Student Details</h1>
					</div>
					
					<div class="lower-section">
						<div class="input-div">
							<label for="reason">Name</label>
							<input type="text" id="name" name="name" class="form-control" autocomplete="off" required value="${std1.name}">
						</div>

						<div class="input-div">
							<label for="type">Email Address</label>
							<input type="email" id="email" name="email"  class="form-control" autocomplete="off" required value="${std1.email}">	
							
						</div>
						
						<div class="input-div">
							<label for="type">Gender</label>
							<select id="gender"
								name="gender" class="form-control" placeholder="Select Your Choice">
								<option selected>${std1.gender}</option>
								<option>Female</option>
								<option>Male</option>
							</select>		
							
						</div>
						
						<div class="input-div">
							<label for="type">Date of Birth</label>
							<input type="date" id="dob" name="dob"  class="form-control" autocomplete="off" required value="${std1.dob}">	
							
						</div>

						<div class="input-div">
							<label for="type">Mathematics Marks</label>
							<input type="number" id="math" name="math"  class="form-control" autocomplete="off" required value="${std1.math}">	
							
						</div>
						
						<div class="input-div">
							<label for="type">Science Marks</label>
							<input type="text" id="science" name="science"  class="form-control" autocomplete="off" required value="${std1.science}">	
							
						</div>
						
						<div class="input-div">
							<label for="type">English Marks</label>
							<input type="text" id="english" name="english"  class="form-control" autocomplete="off" required value="${std1.english}">	
							
						</div>
						
						<div class="input-div">
							<label for="type">History Marks</label>
							<input type="text" id="history" name="history"  class="form-control" autocomplete="off" required value="${std1.history}">	
							
						</div>
						
						<div class="input-div">
							<label for="type">Hindi Marks</label>
							<input type="text" id="hindi" name="hindi" class="form-control" autocomplete="off" required value="${std1.hindi}">	
							
						</div>

					</div>
				<div class="top-section">

						<button class="form-submit-btn" type="submit">Update Details</button>
					</div>
				</form>

			</div>
		</div>
	</div>
	<script>
		document
				.getElementById('endDate')
				.addEventListener(
						'change',
						function() {
							var startDate = document
									.getElementById('startDate').value;
							var endDate = this.value;

							if (startDate && endDate && startDate > endDate) {
								document.getElementById('dateError').style.display = 'block';
								document.getElementById('endDate').style.borderColor = 'red';
							} else {
								document.getElementById('dateError').style.display = 'none';
								document.getElementById('endDate').style.borderColor = '';
							}
						});
	</script>
</body>
</html>