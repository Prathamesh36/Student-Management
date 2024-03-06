<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/studentLogin.css">
    <title>Insert title here</title>
</head>

<body>

    <main>
        <div class="box">
            <div class="inner-box">
                <div class="form-wrap">
                    <form action="/slogin" method="post" autocomplete="off" class="login-form">
                    
                        <div class="heading">
                            <h2>Student Login</h2>
                            <h6>Not registered yet?</h6>
                            <a href="Registration.jsp" class="toggle">sign up</a>
                        </div>

                        <div class="actual-form">
                            <div class="input-wrap">
								<input type="number" class="input-field"
									autocomplete="off" required id="id" name="id"> <label>Id</label>
                            </div>
                            <div class="input-wrap">
                                <input type="text" minlength="4" class="input-field" autocomplete="off" required
                                    id="password" name="password">
                                <label>Password</label>
                            </div>
                            <input type="submit" value="Login" class="sign-btn">
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