/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
// === Bắt đầu mã cho TruyenDAO.java ===
package truyen; // Đảm bảo dòng package này khớp với tên gói của bạn

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

// Nếu lớp Truyen nằm trong gói khác (ví dụ: com.example.model), bạn cần thêm dòng này:
// import com.example.model.Truyen; 
// Trong trường hợp này, vì Truyen nằm cùng gói 'truyen', không cần import cụ thể.

public class TruyenDAO {

    // Thông tin kết nối CSDL của bạn
    // Đảm bảo tên CSDL là "ql_truyen" và có tham số "?useSSL=false&serverTimezone=UTC"
    private static final String DB_URL = "jdbc:mysql://localhost:3306/qltruyen?useSSL=false&serverTimezone=UTC";
    private static final String USER = "root";
    private static final String PASS = ""; // Để trống nếu không có mật khẩu

    // Phương thức để lấy một Connection
    private Connection getConnection() throws SQLException {
        return DriverManager.getConnection(DB_URL, USER, PASS);
    }

    // Phương thức: Thêm truyện mới vào CSDL
    public boolean addTruyen(Truyen truyen) {
        String sql = "INSERT INTO truyen (TenTruyen, TacGia, Gia, AnhBia) VALUES (?, ?, ?, ?)";
        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setString(1, truyen.getTenTruyen());
            pstmt.setString(2, truyen.getTacGia());
            pstmt.setDouble(3, truyen.getGia());
            pstmt.setString(4, truyen.getAnhBia());

            int rowsAffected = pstmt.executeUpdate();
            return rowsAffected > 0;

        } catch (SQLException e) {
            System.err.println("Lỗi khi thêm truyện: " + e.getMessage());
            e.printStackTrace();
            return false;
        }
    }

    // Phương thức: Lấy tất cả truyện từ CSDL
    public List<Truyen> getAllTruyen() {
        List<Truyen> danhSachTruyen = new ArrayList<>();
        String sql = "SELECT * FROM truyen";
        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {

            while (rs.next()) {
                Truyen truyen = new Truyen(
                    rs.getInt("id"),
                    rs.getString("TenTruyen"),
                    rs.getString("TacGia"),
                    rs.getDouble("Gia"),
                    rs.getString("AnhBia")
                );
                danhSachTruyen.add(truyen);
            }

        } catch (SQLException e) {
            System.err.println("Lỗi khi lấy danh sách truyện: " + e.getMessage());
            e.printStackTrace();
        }
        return danhSachTruyen;
    }

    // Phương thức: Cập nhật thông tin truyện
    public boolean updateTruyen(Truyen truyen) {
        String sql = "UPDATE truyen SET TenTruyen = ?, TacGia = ?, Gia = ?, AnhBia = ? WHERE id = ?";
        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setString(1, truyen.getTenTruyen());
            pstmt.setString(2, truyen.getTacGia());
            pstmt.setDouble(3, truyen.getGia());
            pstmt.setString(4, truyen.getAnhBia());
            pstmt.setInt(5, truyen.getId()); // Điều kiện cập nhật theo ID

            int rowsAffected = pstmt.executeUpdate();
            return rowsAffected > 0;

        } catch (SQLException e) {
            System.err.println("Lỗi khi cập nhật truyện: " + e.getMessage());
            e.printStackTrace();
            return false;
        }
    }

    // Phương thức: Xóa truyện theo ID
    public boolean deleteTruyen(int id) {
        String sql = "DELETE FROM truyen WHERE id = ?";
        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setInt(1, id);

            int rowsAffected = pstmt.executeUpdate();
            return rowsAffected > 0;

        } catch (SQLException e) {
            System.err.println("Lỗi khi xóa truyện: " + e.getMessage());
            e.printStackTrace();
            return false;
        }
    }

    // Phương thức tìm kiếm truyện theo tên hoặc tác giả, không phân biệt hoa thường, chỉ cần khớp một phần
    public List<Truyen> searchTruyen(String searchTerm) {
        List<Truyen> ketQua = new ArrayList<>();
        String sql = "SELECT * FROM truyen WHERE LOWER(TenTruyen) LIKE ? OR LOWER(TacGia) LIKE ?";
        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            String searchPattern = "%" + searchTerm.trim().toLowerCase() + "%";
            pstmt.setString(1, searchPattern);
            pstmt.setString(2, searchPattern);

            try (ResultSet rs = pstmt.executeQuery()) {
                while (rs.next()) {
                    Truyen truyen = new Truyen(
                        rs.getInt("id"),
                        rs.getString("TenTruyen"),
                        rs.getString("TacGia"),
                        rs.getDouble("Gia"),
                        rs.getString("AnhBia")
                    );
                    ketQua.add(truyen);
                }
            }
        } catch (SQLException e) {
            System.err.println("Lỗi khi tìm kiếm truyện: " + e.getMessage());
            e.printStackTrace();
        }
        return ketQua;
    }

    // Main method để kiểm tra chức năng
    public static void main(String[] args) {
        TruyenDAO dao = new TruyenDAO();

        // 1. Thêm một truyện mới
        System.out.println("--- Thêm truyện ---");
        Truyen newTruyen = new Truyen("Làng", "Kim Lân", 75000.00, "images/lang.jpg");
        if (dao.addTruyen(newTruyen)) {
            System.out.println("Thêm truyện thành công!");
        } else {
            System.out.println("Thêm truyện thất bại.");
        }

        // 2. Lấy và hiển thị tất cả truyện
        System.out.println("\n--- Danh sách truyện hiện có ---");
        List<Truyen> allTruyen = dao.getAllTruyen();
        if (allTruyen.isEmpty()) {
            System.out.println("Không có truyện nào trong CSDL.");
        } else {
            for (Truyen truyen : allTruyen) {
                System.out.println(truyen);
            }
        }

        // 3. Cập nhật một truyện (ví dụ: truyện có ID=1, hoặc ID của truyện bạn vừa thêm)
        System.out.println("\n--- Cập nhật truyện ---");
        if (!allTruyen.isEmpty()) {
             Truyen firstTruyen = allTruyen.get(0); // Lấy truyện đầu tiên để cập nhật
             firstTruyen.setGia(80000.00); // Tăng giá
             firstTruyen.setTenTruyen(firstTruyen.getTenTruyen() + " (Bản mới)"); // Đổi tên

             if (dao.updateTruyen(firstTruyen)) {
                 System.out.println("Cập nhật truyện ID " + firstTruyen.getId() + " thành công!");
             } else {
                 System.out.println("Cập nhật truyện ID " + firstTruyen.getId() + " thất bại.");
             }
        }

        // 4. Lấy và hiển thị lại tất cả truyện sau khi cập nhật
        System.out.println("\n--- Danh sách truyện sau khi cập nhật ---");
        allTruyen = dao.getAllTruyen();
        if (allTruyen.isEmpty()) {
            System.out.println("Không có truyện nào trong CSDL.");
        } else {
            for (Truyen truyen : allTruyen) {
                System.out.println(truyen);
            }
        }

        // 5. Xóa một truyện (ví dụ: truyện có ID=1)
        System.out.println("\n--- Xóa truyện ---");
        if (!allTruyen.isEmpty()) {
            int idToDelete = allTruyen.get(0).getId(); // Xóa truyện đầu tiên
            if (dao.deleteTruyen(idToDelete)) {
                System.out.println("Xóa truyện ID " + idToDelete + " thành công!");
            } else {
                System.out.println("Xóa truyện ID " + idToDelete + " thất bại.");
            }
        }

        // 6. Lấy và hiển thị lại tất cả truyện sau khi xóa
        System.out.println("\n--- Danh sách truyện sau khi xóa ---");
        allTruyen = dao.getAllTruyen();
        if (allTruyen.isEmpty()) {
            System.out.println("Không có truyện nào trong CSDL.");
        } else {
            for (Truyen truyen : allTruyen) {
                System.out.println(truyen);
            }
        }
    }
}
// === Kết thúc mã cho TruyenDAO.java ===