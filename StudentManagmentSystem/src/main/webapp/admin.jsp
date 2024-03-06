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

html,
body {
    height: 100%;
    width: 100%;
    display: flex;
    justify-content: center;
    align-items: center;

    
    background-color: rgb(171, 215, 254);

}

.main-div {
    display: block;
    justify-content: center;
    padding: 50px;
    width: auto;
    height: auto;
    background: linear-gradient(0deg, rgb(255, 255, 255) 0%, rgb(228 240 255) 100%);
    border-radius: 15px;
    border: 5px solid rgb(255, 255, 255);
    box-shadow: rgba(133, 189, 215, 0.8784313725) 0px 30px 30px -20px;
}
h1{
   color: rgb(53, 53, 53);
}
.top {
    display: flex;
    justify-content: center;
    align-items: center;

}

.bottom {
    display: block;
    text-align: center;

}

#name1, #password1{
    margin-top: 30px;
    text-align: left;
    

}
label{
    padding-left: 10px;
    color: rgb(53, 53, 53);
}

input {
    height: 40px;
    width: 100%;
    border-radius: 10px;
    padding-left: 10px;
    border: 1px solid gray;
    background: none;
    
}

a{
    text-decoration: none;
    color: rgb(158, 189, 255);
    transition: 0.2s;
}
a:hover{
    color: rgb(7, 57, 165);
}

button:hover{
    background-color: rgb(53, 53, 53);
    color: rgb(255, 255, 255);
}
button {
    padding: 10px 40px;
    margin-top: 30px;
    border: 2px solid rgb(53, 53, 53);
    border-radius: 10px;
    transition: 0.2s;
    cursor: pointer;
    background:none;
    width: 50%;
}
.bottom p{
    color: rgb(182, 182, 182);
    font-size: 14px;
}
    </style>	
    <form action="/login" method="post">
        <div class="main-div">
            <div class="top">
                <h1 class="heading">Admin Login</h1>
            </div>
            <div class="bottom">
                <div id="name1">
                    <lable for="email">Username</lable>
					<input type="text" id="email" name="email" placeholder="Enter username"><br />
                </div>
                <div id="password1">
                    <lable for="name">Password</lable>
					<input type="password" id="password" name="password" placeholder="Enter Password">
                </div>
                
                <button type="submit">login</button><br />
               
                

            </div>
          </div>  
    </form>
    
	
	
</body>
</html>