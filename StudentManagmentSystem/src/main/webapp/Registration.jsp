<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
</head>
<body>
	
	
	<style>
        *,
        *::before,
        *::after {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html,
        body {
            height: 100%;
            width: 100%;
            font-family: 'Poppins';
        }

        input {
            font-family: Verdana, Geneva, Tahoma, sans-serif;
        }

        main {
            min-height: 100vh;
            width: 100%;
            overflow: hidden;
            background-color: #f1f1f1;
            padding: 2rem;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .box {
            position: relative;
            width: 100%;
            max-width: 1020px;
            height: 640px;
            background-color: #fff;
            border-radius: 3.3rem;
            box-shadow: 0 60px 40px -30px rgba(0, 0, 0, 0.2);
        }

        .inner-box {
            position: absolute;
            width: calc(100% - 4.1rem);
            height: calc(100% - 4.1rem);
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

        .form-wrap {
            position: absolute;
            height: 100%;
            width: 50%;
            top: 0;
            left: 0;
            display: grid;
            grid-template-columns: 1fr;
            grid-template-rows: 1fr;
            transition: 0.8s ease-in-out;
        }

        .carousel {
            position: absolute;
            height: 100%;
            width: 50%;
            left: 50%;
            top: 0;
            border-radius: 2rem;
            background: 
                url("images/student-image2.jpg");
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
            display: grid;
            grid-template-rows: auto 1fr;
            padding-bottom: 2rem;
            overflow: hidden;
            transition: 0.8s ease-in-out;


        }

        form {
            max-width: 330px;
            width: 100%;
            margin: 0 auto;
            height: 100%;
            display: flex;
            flex-direction: column;
            justify-content: space-evenly;
            grid-column: 1 / 2;
            grid-row: 1 / 2;
            transition: opacity 0.02s 0.4s;
        }

        .logo {
            display: flex;
            align-items: center;
        }

        .logo img {
            width: 27px;
            margin: 0.3rem;
        }

        .logo h4 {
            font-size: 1.1rem;
            margin-top: -9px;
            letter-spacing: -0.5px;
            color: black;
        }

        .heading h2 {
            font-size: 2.1rem;
            font-weight: 700;
            color: #000;
        }

        .heading h6 {
            color: #bababa;
            font-weight: 400;
            font-size: 0.75rem;
            display: inline;
        }

        .toggle {
            color: #151111;
            text-decoration: none;
            font-size: 0.75rem;
            font-weight: 500;
            transition: 0.3s;
        }

        .toggle:hover {
            color: #8371fd;
        }

        .input-wrap {
            position: relative;
            height: 37px;
            margin-bottom: 2rem;

        }

        .input-field {
            position: absolute;
            width: 100%;
            height: 100%;
            background: none;
            outline: none;
            border: none;
            border-bottom: 1px solid #bbb;
            padding: 0;
            font-size: .95rem;
            color: #151111;
            transition: 0.4s;
        }

        label {
            position: absolute;
            left: 0;
            top: 50%;
            transform: translateY(-50%);
            font-size: .95rem;
            color: #bbb;
            pointer-events: none;
            transition: .4s;

        }

        .input-field.active {
            border-bottom-color: #151111;
        }

        .input-field.active+label {
            font-size: .75rem;
            top: -2px;
        }

        .sign-btn {
            display: inline-block;
            width: 100%;
            height: 43px;
            background-color: #151111;
            color: #fff;
            border: none;
            cursor: pointer;
            border-radius: .8rem;
            font-size: .8rem;
            margin-bottom: 2rem;
            transition: .3s;
        }

        .sign-btn:hover {
            background-color: #8371fd;
        }

        .text {
            color: #bbb;
            font-size: .7rem;

        }

        .text a {
            color: #bbb;
            transition: .3s;
        }

        .text a:hover {
            color: #8371fd;
        }

        @media (max-width: 850px) {
            .box {
                height: auto;
                max-width: 550px;
                overflow: hidden;
            }

            .inner-box {
                position: static;
                transform: none;
                width: revert;
                height: revert;
                padding: 2rem;
            }

            .form-wrap {
                position: revert;
                width: 100%;
                height: auto;
            }

            .heading {
                margin: 2rem 0;
            }

            form {
                max-width: revert;
                padding: 1.5rem 2.5rem 2rem;
            }

            .carousel {
                position: revert;
                height: 20vw;
                width: 100%;
                margin-top: 5vw;
            }

        }

        @media (max-width: 530px) {
            main {
                padding: 1rem;
            }

            .box {
                border-radius: 2rem;
            }

            .inner-box {
                padding: 1rem;
            }

            .carousel {
                padding: 1.5rem;
                border-radius: 1.6rem;
            }

            form {
                padding: 1rem 2rem 1.5rem;
            }
        }
    </style>
    <main>
        <div class="box">
            <div class="inner-box">
                <div class="form-wrap">
                    <form action="addstudent" method="post" autocomplete="off" class="login-form">
                    
                        <div class="heading">
                            <h2>Registration</h2>
                            <h6>Already registred?</h6>
                            <a href="Registration.jsp" class="toggle">Login</a>
                        </div>

                        <div class="actual-form">
                            <div class="input-wrap">
                                <input type="number" id="id" name="id" minlength="4" class="input-field" autocomplete="off" required>
                                <label>ID</label>
                            </div>
                            <div class="input-wrap">
					            <input type="text" id="name" name="name" minlength="4" class="input-field" autocomplete="off" required>
                                <label>Name</label>
                            </div>
                            <div class="input-wrap">
					            <input type="email" id="email" name="email" minlength="4" class="input-field" autocomplete="off" required>
                                <label>Email</label>
                            </div>
                            <div class="input-wrap">
                                <input type="password" minlength="4" class="input-field" autocomplete="off" required
                                    id="password" name="password">
                                <label>Password</label>
                            </div>
                            <input type="submit" value="Register" class="sign-btn">
                            <p class="text">Forgotten your password or your login details?<a href="#">Get help</a>
                                Signing in</p>
                            </div>
                    </form>
                </div>
                <div class="carousel">

                </div>
            </div>
        </div>
    </main>
    <script>
        const input = document.querySelectorAll(".input-field");

        input.forEach(inp => {
            inp.addEventListener("focus", () => {
                inp.classList.add("active");
            });
            inp.addEventListener("blur", () => {
                if (inp.value != "") return;
                inp.classList.remove("active");
            });
        })
    </script>
	
	
</body>
</html>