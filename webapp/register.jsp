<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Register - Conference Room Booking</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background-image: url("Room.jpg"); /* ✅ तुमचं image इथे ठेवा */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            font-family: Arial, sans-serif;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .register-box {
            background-color: rgba(0, 0, 0, 0.7); /* Transparent black bg */
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(255,255,255,0.3);
            color: white;
            width: 400px;
            text-align: center;
        }

        .register-box h2 {
            margin-bottom: 20px;
            color: #ffffff;
        }

        .register-box input[type="text"],
        .register-box input[type="password"],
        .register-box select {
            width: 90%;
            padding: 10px;
            margin: 10px 0;
            border: none;
            border-radius: 5px;
        }

        .register-box input[type="submit"] {
            background-color: #2ecc71;
            border: none;
            color: white;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .register-box input[type="submit"]:hover {
            background-color: #27ae60;
        }

        .register-box a {
            display: block;
            margin-top: 15px;
            color: #ecf0f1;
            text-decoration: underline;
        }

        .error {
            color: #ff6b6b;
            font-weight: bold;
        }
          .btn-link:hover {
            background-color: #27ae60;
        }

        .success {
            color: #2ecc71;
            font-weight: bold;
        }
    </style>
</head>
<body>

    <div class="register-box">
        <h2>User Registration</h2>

        <form action="RegisterServlet" method="post">
            <input type="text" name="username" placeholder="Username" required /><br/>
            <input type="password" name="password" placeholder="Password" required /><br/>
            <select name="role" required>
                <option value="">Select Role</option>
                <option value="user">User</option>
                <option value="admin">Admin</option>
            </select><br/>
            <input type="submit" value="Register" />
        </form>

        <p class="error">${error}</p>
        <p class="success">${success}</p>

         <a href="login.jsp" class="btn-link">Login</a>
    </div>

</body>
</html>
