<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login.css">
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
					<h4>Student Result Management System</h4>
				</div>
			</div>
			<div class="form-container">
				<div class="top">
					<h1 class="heading">Login to get started</h1>
				</div>
				<form action="student-Login" method="post" class="form" id="loginForm">
					<div class="form-group">
						<div class="input-div">
							<lable class="label" for="email">Email</lable>
							<input type="text" id="email" name="email">
						</div>

						<div class="label" class="input-div">
							<lable for="name">Password</lable>
							<input type="password" id="password" name="password">
							<div class="forgot-pass">
								<div class=label1>
									<lable for="name">[password: Firstname$yearOfBirth]</lable><br>
								</div>
								<div class=label2>
									<lable for="name">(ex. Vivek$1999)</lable>
								</div>
								
								
							</div>

						</div>

					</div>

					<button class="form-submit-btn" type="submit" id="loginBtn">Login</button>

				</form>
			</div>
		</div>
		<p id="error" style="color: red; display: ${error != null ? 'block' : 'none'};">${error}</p>

	</div>

</body>

</html>