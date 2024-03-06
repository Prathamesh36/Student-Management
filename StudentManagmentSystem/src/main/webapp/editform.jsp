<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

html, body {
	height: 100%;
	width: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
	font-family: Verdana, Geneva, Tahoma, sans-serif;
	background-color: rgb(230, 230, 230);
}

.main-div {
	display: block;
	justify-content: center;
	padding: 50px;
	width: auto;
	height: auto;
	background: linear-gradient(0deg, rgb(255, 255, 255) 0%,
		rgb(244, 247, 251) 100%);
	border-radius: 22px;
	border: 5px solid rgb(255, 255, 255);
	box-shadow: rgba(133, 189, 215, 0.8784313725) 0px 30px 30px -20px;
}

.top {
	display: flex;
	justify-content: center;
	align-items: center;
}

p {
	font-size: 14px;
}

.bottom {
	display: block;
	text-align: center;
}

#name {
	margin-top: 18px;
	text-align: left;
}

label {
	padding-left: 10px;
	font-size: 14px;
}

input {
	height: 40px;
	width: 100%;
	border-radius: 25px;
	padding-left: 10px;
	border: 1px solid gray;
}

a {
	text-decoration: none;
	color: rgb(135, 135, 135);
	transition: 0.2s;
}

a:hover {
	color: rgb(0, 0, 0);
}

button:hover {
	background-color: rgb(0, 0, 0);
	color: rgb(255, 255, 255);
}

button {
	padding: 10px 40px;
	margin-top: 40px;
	border: 2px solid black;
	border-radius: 50px;
	transition: 0.2s;
	cursor: pointer;
	background-color: white;
	width: 100%;
}
</style>
	<form action="/update/${std1.id}" method="post">
		<div class="main-div">
			<div class="top">
				<h1 class="heading">Update Info</h1>
			</div>
			<div class="bottom">
				<div id="name">
					<lable for="name">Name</lable>
					<input type="text" id="name" name="name" placeholder="Enter Name"
						value="${std1.name}">
				</div>
				<div id="name">
					<lable for="email">Email</lable>
					<input type="text" id="email" name="email"
						placeholder="Enter Email" value="${std1.email}"><br />
				</div>
				<button type="submit">Submit</button>
				<br />


			</div>
		</div>
	</form>


</body>
</html>