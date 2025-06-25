<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="truyen.Truyen"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kết quả tìm kiếm</title>
        <link rel="stylesheet" href="styles.css">
    </head>
    <body>
        <header>
            <h1>NHÀ SÁCH CỦA CHIPPA</h1>
            <img src="https://i.pinimg.com/originals/ff/d9/b4/ffd9b46366e14141790a80d4922485bf.gif" class="header-image-left">
            <nav id="menu">
                <ul>
                    <li><a href="index.jsp">Trang chủ</a></li>
                    <li>Thể loại
                        <ul class="submenutl">
                            <li><a href="TinhCam.jsp">Tình cảm</a></li>
                            <li><a href="HanhDong.jsp">Hành động</a></li>
                            <li><a href="HaiHuoc.jsp">Hài hước</a></li>
                            <li><a href="KinhDi.jsp">Kinh dị</a></li>
                        </ul>
                    </li>
                    <li><a href="lienhe.jsp">Liên hệ</a></li>
                    <li><a href="dangnhap.jsp">Đăng nhập</a></li>
                    <li><a href="GioHang.jsp"><i class="fa fa-shopping-cart"></i> Giỏ hàng</a></li>
                </ul>
            </nav>
            
            <form action="search" method="get" class="search-form">
                <label>Tìm kiếm truyện:</label>
                <input type="text" name="searchName" value="${searchTerm}" />
                <button type="submit">Tìm kiếm</button>
            </form>
        </header>

        <div class="container">
            <div class="header">
                <h1>Kết quả tìm kiếm cho: ${searchTerm}</h1>
            </div>
            
            <div class="grid">
                <%
                // Hàm ánh xạ tên truyện sang file JSP
                Map<String, String> mapTenTruyenToJsp = new HashMap<>();
                mapTenTruyenToJsp.put("Người lạ bên bờ biển", "NguoiLa.jsp");
                mapTenTruyenToJsp.put("Thỏ bảy màu và những người nghĩ nó là bạn", "Tho7Mau.jsp");
                mapTenTruyenToJsp.put("Doraemon Tập 23", "Doraemon.jsp");
                mapTenTruyenToJsp.put("Thám tử lừng danh Conan Tập 80", "Conan.jsp");
                mapTenTruyenToJsp.put("One Piece Tập 100", "OnePiece.jsp");
                mapTenTruyenToJsp.put("Cô bé quàng khăn đỏ", "KhanDo.jsp");
                mapTenTruyenToJsp.put("Vì con gái tôi có thể đánh bại cả Ma Vương", "Uchi.jsp");
                mapTenTruyenToJsp.put("Tớ muốn ăn tụy của cậu", "Tuy.jsp");
                mapTenTruyenToJsp.put("One-Punch Man", "OnePunch.jsp");
                mapTenTruyenToJsp.put("Chuyện ông Gióng", "Giong.jsp");
                List<Truyen> searchResults = (List<Truyen>) request.getAttribute("searchResults");
                if (searchResults != null && !searchResults.isEmpty()) {
                    for (Truyen truyen : searchResults) {
                        String tenTruyen = truyen.getTenTruyen();
                        String linkChiTiet = mapTenTruyenToJsp.getOrDefault(tenTruyen, "#");
                %>
                    <div class="book">
                        <img src="<%= truyen.getAnhBia() %>" alt="<%= truyen.getTenTruyen() %>">
                        <h3><%= truyen.getTenTruyen() %></h3>
                        <p><%= truyen.getTacGia() %></p>
                        <p><%= String.format("%,.0f", truyen.getGia()) %> đ</p>
                        <p><button class="button" onclick="window.location.href='<%= linkChiTiet %>'">Chi tiết</button></p>
                    </div>
                <%
                    }
                } else {
                %>
                    <div class="no-results">
                        <p>Không tìm thấy kết quả nào cho "<%= request.getAttribute("searchTerm") %>"</p>
                    </div>
                <%
                }
                %>
            </div>
        </div>

        <footer>
            <p>&copy; 2025 Nhà sách của CHIPPA</p>
            <p>Mọi thông tin liên hệ qua email: bochip68@gmail.com</p>
            <p>Facebook: Chip Bơ</p>
            <p>Địa chỉ: 68 Đ. Nguyễn Chí Thanh, Láng Thượng, Đống Đa, Hà Nội</p>
        </footer>
    </body>
</html> 