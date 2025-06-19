<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Home - Conference Room Booking</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url("Room.jpg"); /* ✅ Ensure image path is correct */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            background-color: rgba(0, 0, 0, 0.6);
            padding: 40px;
            border: 4px solid white;
            border-radius: 10px;
            text-align: center;
            color: white;
            width: 450px;
        }

        h1 {
            margin-top: 0;
            text-shadow: 2px 2px 4px #000;
        }

        .btn {
            display: inline-block;
            margin: 10px;
            padding: 12px 24px;
            font-size: 16px;
            background-color: #2980b9;
            color: white;
            border: none;
            border-radius: 6px;
            text-decoration: none;
            box-shadow: 2px 2px 4px rgba(0,0,0,0.4);
        }

        .btn:hover {
            background-color: #3498db;
        }

        .desc {
            margin-top: 20px;
            font-size: 18px;
            color: #f0f0f0;
            text-shadow: 1px 1px 2px #000;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Welcome to Conference Room Booking System</h1>

        <div class="desc">
            Book rooms easily, manage availability, and ensure seamless meetings.
        </div>

        <br/>

        <a href="login.jsp" class="btn">Login</a>
        <a href="register.jsp" class="btn">Register</a>
    </div>

</body>
</html>
