<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login - Conference Room Booking</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background-image: url("Room.jpg");
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            font-family: Arial, sans-serif;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .login-box {
            background-color: rgba(0, 0, 0, 0.7);
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(255,255,255,0.3);
            color: white;
            width: 350px;
            text-align: center;
        }

        .login-box h2 {
            margin-bottom: 20px;
        }

        .login-box input[type="text"],
        .login-box input[type="password"] {
            width: 90%;
            padding: 10px;
            margin: 10px 0;
            border: none;
            border-radius: 5px;
        }

        .login-box input[type="submit"] {
            background-color: #3498db;
            border: none;
            color: white;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .login-box input[type="submit"]:hover {
            background-color: #2980b9;
        }

        .btn-link {
            display: inline-block;
            margin-top: 15px;
            padding: 10px 20px;
            background-color: #2ecc71;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        .btn-link:hover {
            background-color: #27ae60;
        }

        .error {
            color: #ff6b6b;
            font-weight: bold;
        }
    </style>
</head>
<body>

    <div class="login-box">
        <h2>Login</h2>

        <form action="LoginServlet" method="post">
            <input type="text" name="username" placeholder="Username" required /><br/>
            <input type="password" name="password" placeholder="Password" required /><br/>
            <input type="submit" value="Login" />
        </form>

        <p class="error">${error}</p>

        <a href="register.jsp" class="btn-link">Register</a>
    </div>

</body>
</html>
