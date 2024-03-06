<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Success !!</title>
</head>

<body>
    <style>
        @font-face {
            font-family: NeueHaasDisplayBlack;
            src: url(./font/NeueHaasDisplayMediu.ttf);
        }

        @font-face {
            font-family: NeueHaasDisplayBlack;
            font-weight: 100;
            src: url(./font/NeueHaasDisplayLight.ttf);
        }

        @font-face {
            font-family: NeueHaasDisplayBlack;
            font-weight: 200;
            src: url(./font/NeueHaasDisplayRoman.ttf);
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html,
        body {
            height: 100%;
            width: 100%;
            font-family: 'Poppins', sans-serif;
            font-weight: 700;
        }

        .main-container {
            width: 100%;
            min-height: 100vh;
            background-color: rgb(171, 215, 254);
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
        }

        .top {
            width: 100%;
            height: 50%;
        }

        .center-container {
            position: relative;
            width: calc(100% - 20px);
            max-width: 600px;
            min-height: 15rem;
            margin: 20px auto;
            padding: 20px;
            background: linear-gradient(0deg, rgb(255, 255, 255) 0%, rgb(228 240 255) 100%);
    border-radius: 15px;
    border: 5px solid rgb(255, 255, 255);
    box-shadow: rgba(133, 189, 215, 0.8784313725) 0px 30px 30px -20px;
            display: flex;
            flex-direction: column;
            justify-content: space-evenly;
        }

        .main-container h1 {
            /* font-size: calc(15px + 2vw); /* Example: base size 16px + 2 times the viewport width */
            font-size: 2.5rem;
        }

        .main-container h2 {
            /*  font-size: calc(1px + 1vw); /* Example: base size 16px + 2 times the viewport width */
            font-size: 1rem;
        }

        .btn-container {
            width: 100%;
            height: 100%;
            display: flex;
            justify-content: space-evenly;
        }

        .btn-container a:hover {
            background-color: rgb(53, 53, 53);;
            color: rgb(255, 255, 255);
        }

        .btn-container a {
            padding: 15px 0px;
            margin-top: 40px;
            border: 2px solid rgb(53, 53, 53);
            border-radius: 11px;
            transition: 0.2s;
            cursor: pointer;
            background:none;
            width: 30%;
            text-decoration: none;
            color: rgb(53, 53, 53);
            
        }
    </style>

    <div class="main-container">
        <div class="center-container">
            <div class="top">
                <h1>Registered Successfully</h1>
                <h2>Please Login to view Information</h2>
            </div>

            <div class="btn-container">
                <a href="homepage.jsp">Home Page</a>
                <a href="studentLogin.jsp">Login</a>      
        </div>
        </div>

    </div>
</body>

</html>