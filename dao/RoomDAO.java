package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import model.Room;
import util.DBUtil;

public class RoomDAO {

	public List<Room> getAllRooms() {
	    List<Room> roomList = new ArrayList<>();
	    String sql = "SELECT * FROM rooms";

	    try (Connection conn = DBUtil.getConnection();
	         Statement stmt = conn.createStatement();
	         ResultSet rs = stmt.executeQuery(sql)) {

	        while (rs.next()) {
	            Room room = new Room();
	            room.setId(rs.getInt("id"));
	            room.setName(rs.getString("name"));
	            room.setCapacity(rs.getInt("capacity"));
	            room.setProjector(rs.getBoolean("projector"));
	            room.setWhiteboard(rs.getBoolean("whiteboard"));

	            roomList.add(room);
	        }

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return roomList;
	}

    public boolean addRoom(Room room) {
        String sql = "INSERT INTO rooms (name, capacity, projector, whiteboard) VALUES (?, ?, ?, ?)";

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, room.getName());
            ps.setInt(2, room.getCapacity());
            ps.setBoolean(3, room.isProjector());
            ps.setBoolean(4, room.isWhiteboard());

            int rows = ps.executeUpdate();
            return rows > 0;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }
}
