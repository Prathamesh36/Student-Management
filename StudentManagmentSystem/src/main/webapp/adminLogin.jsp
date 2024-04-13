<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Result Management System</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/login.css">
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
				<form action="/addDetails" method="post" class="form" id="loginForm">
					<div class="form-group">
						<div class="input-div">
							<lable class="label" for="email">Email</lable>
							<input type="text" id="email" name="email">
						</div>

						<div class="label" class="input-div">
							<lable for="name">Password</lable>
							<input type="password" id="password" name="password">
							<div class="forgot-pass">
								<lable for="name"></lable>
							</div>

						</div>

					</div>

					<button class="form-submit-btn" type="button" id="loginBtn">Login</button>

				</form>
			</div>
		</div>
		<p id="error" style="color: red; display: none;">Invalid
			credentials</p>
	</div>

	<script>
		document
				.getElementById('loginBtn')
				.addEventListener(
						'click',
						function() {
							var email = document.getElementById('email').value;
							var password = document.getElementById('password').value;

							console.log(email);
							console.log(password);
							if (email === '' && password === '') {
								// If email and password don't match, show error message
								document.getElementById('error').style.display = 'block';
							} else if (email === 'admin@techprimelab.com'
									&& password === 'admin@123') {
								// If email and password match, submit the form
								document.getElementById('error').style.display = 'none';
								document.getElementById('password').style.borderColor = '';
								document.getElementById('loginForm').submit(); // Submit the form
							} else if (email !== 'admin@techprimelab.com'
									&& password !== 'admin@123') {
								document.getElementById('email').style.borderColor = 'red';
								document.getElementById('password').style.borderColor = 'red';
								document.getElementById('error').style.display = 'block';
							}

						});
	</script>

</body>

</html>