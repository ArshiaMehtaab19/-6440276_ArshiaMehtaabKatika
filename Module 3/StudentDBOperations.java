import java.sql.*;

class StudentDAO {
    private Connection conn;

    public StudentDAO(String dbUrl) throws SQLException {
        conn = DriverManager.getConnection(dbUrl);
    }

    public void insertStudent(int id, String name) throws SQLException {
        String sql = "INSERT INTO students(id, name) VALUES(?, ?)";
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, id);
            pstmt.setString(2, name);
            pstmt.executeUpdate();
        }
    }

    public void updateStudent(int id, String newName) throws SQLException {
        String sql = "UPDATE students SET name = ? WHERE id = ?";
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, newName);
            pstmt.setInt(2, id);
            pstmt.executeUpdate();
        }
    }
}

public class StudentDBOperations {
    public static void main(String[] args) {
        try {
            StudentDAO dao = new StudentDAO("jdbc:sqlite:students.db");
            dao.insertStudent(3, "Rahul");
            dao.updateStudent(3, "Rahul Sharma");
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
}
