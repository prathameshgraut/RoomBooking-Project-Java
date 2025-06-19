<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%
    String username = (String) session.getAttribute("username");
    String role = (String) session.getAttribute("role");

    if (username == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background-image: url("Room.jpg"); /* ✅ Make sure image exists in webapp */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            font-family: 'Segoe UI', sans-serif;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .dashboard-box {
            background-color: rgba(0, 0, 0, 0.75);
            padding: 40px;
            border-radius: 12px;
            color: white;
            text-align: center;
            width: 400px;
            box-shadow: 0 0 10px rgba(255, 255, 255, 0.3);
        }

        .dashboard-box h2 {
            margin-bottom: 30px;
            color: #00ffff;
            text-shadow: 1px 1px 2px #000;
        }

        .dashboard-box a {
            display: block;
            margin: 15px auto;
            padding: 12px;
            width: 80%;
            background-color: #3498db;
            color: white;
            text-decoration: none;
            border-radius: 6px;
            transition: background-color 0.3s ease;
        }

        .dashboard-box a:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>

    <div class="dashboard-box">
        <h2>Welcome, <%= username %>!</h2>

        <a href="bookRoom.jsp">📅 Book a Conference Room</a>

        <% if ("admin".equals(role)) { %>
            <a href="admin.jsp">🛠️ Admin Panel (Manage Rooms)</a>
        <% } %>

        <a href="LogoutServlet">🚪 Logout</a>
    </div>

</body>
</html>
