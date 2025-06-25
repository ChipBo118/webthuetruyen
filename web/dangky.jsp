<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Đăng ký tài khoản</title>
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
                <li><a href="GioHang.jsp"><i class="fa fa-shopping-cart"></i> Giỏ hàng</a></li>
            </ul>
        </nav>
        <div class="banner">
            <div class="slides">
                <img src="https://vn-live-02.slatic.net/p/9cb08b7b618b125ccaa3cf7aca83b605.jpg" alt="First Image">
                <img src="https://product.hstatic.net/1000376556/product/img_1163_3f117125171d490786a73bbd8e976ce1_1024x1024.jpeg" alt="Second Image"> 
                <img src="https://th.bing.com/th/id/OIP.oiOgkTvLclffV_EmcHchFQHaLi?rs=1&pid=ImgDetMain/" alt="Third Image"> 
                <img src="https://moingay1cuonsach.com.vn/wp-content/uploads/2022/02/to-muon-an-tuy-cua-cau.jpg" alt="Fourth Image"> 
                <img src="https://th.bing.com/th/id/OIP.OlyMqiN9hBiJnHc8GgNUQgHaJx?w=136&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3" alt="Fifth Image"> 
                <img src="https://vn-test-11.slatic.net/p/d5e8a3737968262733a383c41c2563cf.jpg" alt="Six Image"> 
                <img src="https://product.hstatic.net/1000376556/product/vi_con_gai_toi_co_the_danh_bai_ca_ma_vuong_-_tap_6_final__1__128e11691cba4281b4a66f6128d92bc6_1024x1024.png" alt="Severn Image"> 
            </div>
        </div>
        <form action="search" method="get" class="search-form">
            <label>Tìm kiếm truyện:</label>
            <input type="text" name="searchName" />
            <button type="submit">Tìm kiếm</button>
        </form>
    </header>
    <div class="container">
        <div class="header">
            <h1>Đăng ký tài khoản</h1>
        </div>
        <form action="RegisterServlet" method="post" class="form-box">
            <% if (request.getAttribute("error") != null) { %>
                <div class="error-message" style="color: #e91e63; margin-bottom: 15px; text-align: center;">
                    <%= request.getAttribute("error") %>
                </div>
            <% } %>
            <div class="form-group">
                <label for="username">Tên đăng nhập:</label>
                <input type="text" id="username" name="username" required />
            </div>
            <div class="form-group">
                <label for="password">Mật khẩu:</label>
                <input type="password" id="password" name="password" required />
            </div>
            <div class="form-group">
                <label for="confirm">Nhập lại mật khẩu:</label>
                <input type="password" id="confirm" name="confirm" required />
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required />
            </div>
            <div class="form-group">
                <button type="submit">Đăng ký</button>
            </div>
            <div class="form-group" style="text-align:center;">
                <span>Đã có tài khoản? <a href="dangnhap.jsp">Đăng nhập ngay</a></span>
            </div>
        </form>
    </div>
    <footer>
        <p>&copy; 2025 Nhà sách của CHIPPA</p>
        <p>Mọi thông tin liên hệ qua email: bochip68@gmail.com</p>
        <p>Facebook: Chip Bơ</p>
        <p>Địa chỉ: 68 Đ. Nguyễn Chí Thanh, Láng Thượng, Đống Đa, Hà Nội</p>
    </footer>
</body>
</html> 