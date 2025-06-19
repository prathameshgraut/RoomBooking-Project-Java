<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%
    String username = (String) session.getAttribute("username");
    String role = (String) session.getAttribute("role");

    if (username == null || !"admin".equals(role)) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Panel - Add Room</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background-image: url("Room.jpg"); 
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            font-family: 'Segoe UI', sans-serif;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
        }

        .form-box {
            background-color: rgba(0, 0, 0, 0.75);
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 0 12px rgba(255, 255, 255, 0.3);
            width: 400px;
            text-align: center;
        }

        .form-box h2 {
            margin-bottom: 20px;
            color: #00ffff;
            text-shadow: 1px 1px 3px black;
        }

        .form-box input[type="text"],
        .form-box input[type="number"] {
            width: 90%;
            padding: 10px;
            margin: 8px 0;
            border: none;
            border-radius: 6px;
        }

        .form-box label {
            display: block;
            margin: 5px 0;
            font-size: 15px;
        }

        .form-box input[type="submit"],
        .form-box .btn-link button {
            background-color: #3498db;
            color: white;
            border: none;
            padding: 10px 25px;
            border-radius: 6px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 10px;
            transition: background-color 0.3s ease;
        }

        .form-box input[type="submit"]:hover,
        .form-box .btn-link button:hover {
            background-color: #2980b9;
        }

        .message {
            margin-top: 10px;
            font-weight: bold;
            color: #2ecc71;
        }

        .back-link {
            display: inline-block;
            margin-top: 15px;
            text-decoration: none;
            color: #f1c40f;
        }

        .btn-link {
            text-decoration: none;
        }
    </style>
</head>
<body>

<div class="form-box">
    <h2>Admin Panel - Add Conference Room</h2>

    <form action="AdminServlet" method="post">
        <input type="text" name="name" placeholder="Room Name" required /><br/>
        <input type="number" name="capacity" placeholder="Capacity" required /><br/>
        <label><input type="checkbox" name="projector" /> Projector</label>
        <label><input type="checkbox" name="whiteboard" /> Whiteboard</label><br/>
        <input type="submit" value="Add Room" />
    </form>

    <p class="message">${message}</p>

    <a href="dashboard.jsp" class="btn-link"><button>← Back to Dashboard</button></a><br><br>
    <a href="index.jsp" class="btn-link"><button>🏠 Home</button></a>
</div>

</body>
</html>
