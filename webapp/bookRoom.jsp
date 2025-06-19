<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Room" %>
<%@ page import="dao.RoomDAO" %>
<%
    String username = (String) session.getAttribute("username");
    if (username == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    RoomDAO roomDAO = new RoomDAO();
    List<Room> roomList = roomDAO.getAllRooms();
%>
<!DOCTYPE html>
<html>
<head>
    <title>Book a Room</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background-image: url("Room.jpg"); /* ✅ Make sure the image exists */
            background-size: cover;
            background-position: center;
            font-family: 'Segoe UI', sans-serif;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
        }

        .booking-box {
            background-color: rgba(0, 0, 0, 0.75);
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 0 10px rgba(255, 255, 255, 0.3);
            width: 400px;
            text-align: center;
        }

        .booking-box h2 {
            margin-bottom: 25px;
            color: #00ffff;
            text-shadow: 1px 1px 2px #000;
        }

        .booking-box select,
        .booking-box input[type="date"],
        .booking-box input[type="time"],
        .booking-box input[type="submit"] {
            width: 90%;
            padding: 10px;
            margin: 10px 0;
            border: none;
            border-radius: 6px;
            font-size: 15px;
        }

        .booking-box input[type="submit"] {
            background-color: #3498db;
            color: white;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .booking-box input[type="submit"]:hover {
            background-color: #2980b9;
        }

        .message {
            margin-top: 10px;
            color: #00ffcc;
            font-weight: bold;
        }

        .back-link {
            margin-top: 15px;
            display: inline-block;
            color: #f1c40f;
            text-decoration: none;
        }

        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <div class="booking-box">
        <h2>Book a Conference Room</h2>

        <form action="BookingServlet" method="post">
            <select name="room_id" required>
                <option value="">Select Room</option>
                <% for (Room room : roomList) { %>
                    <option value="<%= room.getId() %>">
                        <%= room.getName() %> (Capacity: <%= room.getCapacity() %>)
                    </option>
                <% } %>
            </select><br/>

            <input type="date" name="booking_date" required /><br/>
            <input type="time" name="start_time" required /><br/>
            <input type="time" name="end_time" required /><br/>

            <input type="submit" value="Book Room" />
        </form>

        <div class="message">${message}</div>

        <a href="dashboard.jsp" class="back-link">← Back to Dashboard</a>
    </div>

</body>
</html>
