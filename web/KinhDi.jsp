<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String username = (String) session.getAttribute("username");
    if (username == null) username = "Chippa";
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Thể loại: Kinh dị</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <header>
        <h1>NHÀ SÁCH CỦA CHIPPA</h1>
        <img src="https://i.pinimg.com/originals/ff/d9/b4/ffd9b46366e14141790a80d4922485bf.gif" class="header-image-left">
        <nav id="menu">
            <ul>
                <li><a href="TrangChuDaDangNhap.jsp">Trang chủ</a></li>
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
                <li class="user-avatar-menu">
                    <div class="user-avatar-loggedin">
                        <img src="https://cdn-icons-png.flaticon.com/512/149/149071.png" class="user-avatar-img" alt="avatar" />
                        <span class="user-avatar-username"><%= username %></span>
                        <div class="user-dropdown">
                            <a href="#">Tài khoản của tôi</a>
                            <a href="#">Đơn thuê</a>
                            <a href="dangxuat.jsp" id="logout-link">Đăng xuất</a>
                        </div>
                    </div>
                </li>
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
                <img src="https://vn-live-02.slatic.net/p/9cb08b7b618b125ccaa3cf7aca83b605.jpg" alt="First Image">
                <img src="https://product.hstatic.net/1000376556/product/img_1163_3f117125171d490786a73bbd8e976ce1_1024x1024.jpeg" alt="Second Image"> 
                <img src="https://th.bing.com/th/id/OIP.oiOgkTvLclffV_EmcHchFQHaLi?rs=1&pid=ImgDetMain/" alt="Third Image"> 
                <img src="https://moingay1cuonsach.com.vn/wp-content/uploads/2022/02/to-muon-an-tuy-cua-cau.jpg" alt="Fourth Image"> 
                <img src="https://th.bing.com/th/id/OIP.OlyMqiN9hBiJnHc8GgNUQgHaJx?w=136&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3" alt="Fifth Image"> 
                <img src="https://vn-test-11.slatic.net/p/d5e8a3737968262733a383c41c2563cf.jpg" alt="Six Image"> 
                <img src="https://product.hstatic.net/1000376556/product/vi_con_gai_toi_co_the_danh_bai_ca_ma_vuong_-_tap_6_final__1__128e11691cba4281b4a66f6128d92bc6_1024x1024.png" alt="Severn Image"> 
            </div>
        </div>
        <form action="search" method="get">
            <table>
                <tr>
                    <td>Tìm kiếm truyện:</td>
                    <td><input type="text" name="searchName" /></td>
                    <td><button>Tìm kiếm</button></td>
                </tr>
            </table>
        </form>
    </header>
    <div class="container">
        <div class="header">
            <h1>Truyện Kinh dị</h1>
        </div>
        <div class="grid">
            <div class="book">
                <img src="https://th.bing.com/th/id/OIP.OlyMqiN9hBiJnHc8GgNUQgHaJx?w=136&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3" alt="Book 5">
                <h3>One Piece Tập 100</h3>
                <p>Eiichiro Oda</p>
                <p>37.155 đ</p>
                <p><button class="button">Chi tiết</button></p>
            </div>
            <div class="book">
                <img src="https://vn-test-11.slatic.net/p/d5e8a3737968262733a383c41c2563cf.jpg" alt="Book 6">
                <h3>Cô bé quàng khăn đỏ</h3>
                <p>Nhiều tác giả</p>
                <p>9.000 đ</p>
                <p><button class="button">Chi tiết</button></p>
            </div>
        </div>
    </div>
    <footer>
        <p>&copy; 2025 Nhà sách của CHIPPA</p>
        <p>Mọi thông tin liên hệ qua email: bochip68@gmail.com</p>
        <p>Facebook: Chip Bơ</p>
        <p>Địa chỉ: 68 Đ. Nguyễn Chí Thanh, Láng Thượng, Đống Đa, Hà Nội</p>
    </footer>
    <style>
    .user-avatar-menu {
        display: flex !important;
        align-items: center !important;
        margin-left: 8px;
        height: 100%;
        background: #fbdea2;
        border-radius: 24px;
        padding: 0 8px;
    }
    .user-avatar-loggedin {
        display: flex;
        align-items: center;
        gap: 8px;
        background: #fbdea2;
        border-radius: 24px;
        padding: 4px 14px 4px 6px;
        box-shadow: none;
        font-weight: 600;
        font-size: 1.1rem;
        color: #6a9c7c;
        position: relative;
        cursor: pointer;
    }
    .user-avatar-img {
        width: 32px;
        height: 32px;
        border-radius: 50%;
        object-fit: cover;
        background: #eee;
    }
    .user-dropdown {
        display: none;
        position: absolute;
        top: 110%;
        left: 50%;
        transform: translateX(-50%);
        background: #fbdea2;
        border-radius: 10px;
        box-shadow: 0 2px 12px rgba(0,0,0,0.15);
        min-width: 180px;
        padding: 10px 0;
        flex-direction: column;
        gap: 0;
        z-index: 100;
        align-items: center;
    }
    .user-dropdown a {
        display: block;
        width: 100%;
        box-sizing: border-box;
        padding: 10px 8px;
        color: #6a9c7c !important;
        text-decoration: none;
        font-size: 1rem;
        transition: background 0.2s, color 0.2s;
        text-align: center;
    }
    .user-dropdown a:hover {
        background: #f3c96b;
        color: #fff !important;
        border-radius: 8px;
    }
    .user-avatar-loggedin:hover .user-dropdown,
    .user-avatar-loggedin:focus-within .user-dropdown {
        display: flex;
    }
    .user-avatar-loggedin:hover, .user-avatar-loggedin:focus {
        background: #e2bc6f;
        color: #fff;
    }
    .user-avatar-loggedin:hover span.user-avatar-username, .user-avatar-loggedin:focus span.user-avatar-username {
        color: #fff;
    }
    .user-avatar-loggedin span.user-avatar-username {
        color: #6a9c7c;
        transition: color 0.2s;
    }
    #menu ul li ul.submenutl {
        display: none;
        position: absolute;
        top: 100%;
        left: 50%;
        transform: translateX(-50%);
        background-color: #fbdea2;
        min-width: 140px;
        box-shadow: 0 2px 8px rgba(0,0,0,0.08);
        border-radius: 16px;
        z-index: 10;
        padding: 0;
    }
    #menu ul li ul.submenutl li:hover {
        background: #e2bc6f;
        color: #fff;
        border-radius: 12px;
    }
    </style>
    <script>
    document.addEventListener('DOMContentLoaded', function() {
        var logout = document.getElementById('logout-link');
        if (logout) {
            logout.addEventListener('click', function(e) {
                setTimeout(function() { window.location.href = 'index.jsp'; }, 200);
            });
        }
    });
    </script>
</body>
</html> 