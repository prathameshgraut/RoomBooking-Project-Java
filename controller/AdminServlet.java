package controller;

import java.io.IOException;

import dao.RoomDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Room;

@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final RoomDAO roomDAO = new RoomDAO();

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(false);

		if (session == null || session.getAttribute("role") == null || !"admin".equals(session.getAttribute("role"))) {
			response.sendRedirect("login.jsp");
			return;
		}

		try {
			// Form data
			String name = request.getParameter("name");
			int capacity = Integer.parseInt(request.getParameter("capacity"));
			boolean Projector = request.getParameter("projector") != null;
			boolean Whiteboard = request.getParameter("whiteboard") != null;

			// Create room object
			Room room = new Room(0, name, capacity, Projector, Whiteboard);
			boolean success = roomDAO.addRoom(room);

			// Set message
			if (success) {
				request.setAttribute("message", "Room added successfully.");
			} else {
				request.setAttribute("message", "Failed to add room. Please try again.");
			}

		} catch (Exception e) {
			request.setAttribute("message", "Error: " + e.getMessage());
			e.printStackTrace();
		}

		// Forward to admin page with message
		request.getRequestDispatcher("admin.jsp").forward(request, response);
	}

	// Optional: To handle GET request if user accesses directly
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Redirect to admin.jsp page
		response.sendRedirect("admin.jsp");
	}
}
