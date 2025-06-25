<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="jakarta.servlet.http.HttpSession"%>
<%
    String username = (String) session.getAttribute("username");
    if (username == null) username = "Chippa";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trang chủ - Đã đăng nhập</title>
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
                <label style="font-size: 1.15rem; margin-right: 8px; align-self: center;">Tìm kiếm truyện:</label>
                <input type="text" name="searchName" style="padding: 6px 10px; border-radius: 6px; border: 1px solid #ccc; font-size: 1rem; margin-right: 8px; min-width: 220px;" />
                <button type="submit" style="background: #f3c96b; color: #555; border: none; border-radius: 6px; padding: 7px 18px; font-size: 1rem; cursor: pointer; transition: background 0.2s; font-weight: 600;">Tìm kiếm</button>
            </form>
            <div style="margin-top: 20px; font-size: 1.3rem; color: #6a9c7c; font-weight: bold;">
                Xin chào, <%= username %>! Chúc bạn một ngày vui vẻ tại Nhà sách của CHIPPA!
            </div>
        </header>
        <div class="container">
            <div class="section-box">
                <div class="header" style="text-align: left;">
                    <h1> </h1>
                    <h1>Truyện mới</h1>
                </div>
                <div class="grid" id="new-page-1">
                    <div class="book">
                        <img src="https://cdn0.fahasa.com/media/flashmagazine/images/page_images/doraemon_truyen_ngan___tap_23_tai_ban_2019/2021_06_15_15_46_23_1-390x510.jpg" alt="Book 1"> 
                        <h3>Doraemon Tập 23</h3>
                        <p>Fujiko F Fujio</p>
                        <p>17.000 đ</p>
                        <p><button class="button" onclick="window.location.href='Doraemon.jsp'">Chi tiết</button></p>
                    </div>
                    <div class="book">
                        <img src="https://cdn0.fahasa.com/media/catalog/product/o/n/one_piece_-_tap_100_-_limited_-_postcard_pvc_1.jpg" alt="Book 2"> 
                        <h3>One Piece Tập 100</h3>
                        <p>Eiichiro Oda</p>
                        <p>37.155 đ</p>
                        <p><button class="button" onclick="window.location.href='OnePiece.jsp'">Chi tiết</button></p>
                    </div>
                    <div class="book">
                        <img src="https://moingay1cuonsach.com.vn/wp-content/uploads/2022/02/to-muon-an-tuy-cua-cau.jpg" alt="Book 3"> 
                        <h3>Tớ muốn ăn tụy của cậu</h3>
                        <p>Yoru Sumino</p>
                        <p>18.800 đ</p>
                        <p><button class="button" onclick="window.location.href='Tuy.jsp'">Chi tiết</button></p>
                    </div>
                    <div class="book">
                        <img src="https://product.hstatic.net/1000376556/product/img_1163_3f117125171d490786a73bbd8e976ce1_1024x1024.jpeg" alt="Book 4"> 
                        <h3>Người lạ bên bờ biển</h3>
                        <p>Kii Kanna</p>
                        <p>21.000 đ</p>
                        <p><button class="button" onclick="window.location.href='NguoiLa.jsp'">Chi tiết</button></p>
                    </div>
                </div>
                <div class="grid" id="new-page-2" style="display:none;">
                    <div class="book">
                        <img src="https://mycomics.it/wp-content/uploads/sites/16/2022/09/FUMONEPUV0025.jpg" alt="Book 5"> 
                        <h3>One-Punch Man</h3>
                        <p>Murata YusukeOne</p>
                        <p>32.655 đ</p>
                        <p><button class="button" onclick="window.location.href='OnePunch.jsp'">Chi tiết</button></p>
                    </div>
                    <div class="book">
                        <img src="https://th.bing.com/th/id/OIP.oiOgkTvLclffV_EmcHchFQHaLi?rs=1&pid=ImgDetMain" alt="Book 6"> 
                        <h3>Thám tử lừng danh Conan Tập 80</h3>
                        <p>Gosho Aoyama</p>
                        <p>14.520 đ</p>
                        <p><button class="button" onclick="window.location.href='Conan.jsp'">Chi tiết</button></p>
                    </div>
                    <div class="book">
                        <img src="https://vn-test-11.slatic.net/p/d5e8a3737968262733a383c41c2563cf.jpg" alt="Book 7"> 
                        <h3>Cô bé quàng khăn đỏ</h3>
                        <p>Nhiều tác giả</p>
                        <p>9.000 đ</p>
                        <p><button class="button" onclick="window.location.href='KhanDo.jsp'">Chi tiết</button></p>
                    </div>
                    <div class="book">
                        <img src="https://product.hstatic.net/1000376556/product/vi_con_gai_toi_co_the_danh_bai_ca_ma_vuong_-_tap_6_final__1__128e11691cba4281b4a66f6128d92bc6_1024x1024.png" alt="Book 8"> 
                        <h3>Vì con gái tôi có thể đánh bại cả Ma Vương</h3>
                        <p>Chirolu</p>
                        <p>24.720 đ</p>
                        <p><button class="button" onclick="window.location.href='Uchi.jsp'">Chi tiết</button></p>
                    </div>
                </div>
                <div class="pagination-btns" style="text-align:center; margin-top: 24px;">
                    <button id="btn-new-page-1" class="page-btn active" onclick="showNewPage(1)">1</button>
                    <button id="btn-new-page-2" class="page-btn" onclick="showNewPage(2)">2</button>
                </div>
            </div>
            <div class="section-box">
                <div class="header" style="text-align: left;">
                    <h1> </h1>
                    <h1>Truyện nổi bật</h1>
                </div>
                <div class="grid" id="featured-page-1">
                    <div class="book">
                        <img src="https://vn-live-02.slatic.net/p/9cb08b7b618b125ccaa3cf7aca83b605.jpg" alt="Book 1"> 
                        <h3>Thỏ bảy màu và những người nghĩ nó là bạn</h3>
                        <p>Huỳnh Thái Ngọc</p>
                        <p>27.875 đ</p>
                        <p><button class="button" onclick="window.location.href='Tho7Mau.jsp'">Chi tiết</button></p>
                    </div>
                    <div class="book">
                        <img src="https://product.hstatic.net/1000376556/product/img_1163_3f117125171d490786a73bbd8e976ce1_1024x1024.jpeg" alt="Book 2"> 
                        <h3>Người lạ bên bờ biển</h3>
                        <p>Kii Kanna</p>
                        <p>21.000 đ</p>
                        <p><button class="button" onclick="window.location.href='NguoiLa.jsp'">Chi tiết</button></p>
                    </div>
                    <div class="book">
                        <img src="https://mycomics.it/wp-content/uploads/sites/16/2022/09/FUMONEPUV0025.jpg" alt="Book 3"> 
                        <h3>One-Punch Man</h3>
                        <p>Murata YusukeOne</p>
                        <p>32.655 đ</p>
                        <p><button class="button" onclick="window.location.href='OnePunch.jsp'">Chi tiết</button></p>
                    </div>
                    <div class="book">
                        <img src="https://cdn0.fahasa.com/media/flashmagazine/images/page_images/doraemon_truyen_ngan___tap_23_tai_ban_2019/2021_06_15_15_46_23_1-390x510.jpg" alt="Book 4"> 
                        <h3>Doraemon Tập 23</h3>
                        <p>Fujiko F Fujio</p>
                        <p>17.000 đ</p>
                        <p><button class="button" onclick="window.location.href='Doraemon.jsp'">Chi tiết</button></p>
                    </div>
                </div>
                <div class="grid" id="featured-page-2" style="display:none;">
                    <div class="book">
                        <img src="https://cdn0.fahasa.com/media/catalog/product/o/n/one_piece_-_tap_100_-_limited_-_postcard_pvc_1.jpg" alt="Book 5"> 
                        <h3>One Piece Tập 100</h3>
                        <p>Eiichiro Oda</p>
                        <p>37.155 đ</p>
                        <p><button class="button" onclick="window.location.href='OnePiece.jsp'">Chi tiết</button></p>
                    </div>
                    <div class="book">
                        <img src="https://th.bing.com/th/id/OIP.oiOgkTvLclffV_EmcHchFQHaLi?rs=1&pid=ImgDetMain" alt="Book 6"> 
                        <h3>Thám tử lừng danh Conan Tập 80</h3>
                        <p>Gosho Aoyama</p>
                        <p>14.520 đ</p>
                        <p><button class="button" onclick="window.location.href='Conan.jsp'">Chi tiết</button></p>
                    </div>
                    <div class="book">
                        <img src="https://vn-test-11.slatic.net/p/d5e8a3737968262733a383c41c2563cf.jpg" alt="Book 7"> 
                        <h3>Cô bé quàng khăn đỏ</h3>
                        <p>Nhiều tác giả</p>
                        <p>9.000 đ</p>
                        <p><button class="button" onclick="window.location.href='KhanDo.jsp'">Chi tiết</button></p>
                    </div>
                    <div class="book">
                        <img src="https://product.hstatic.net/1000376556/product/vi_con_gai_toi_co_the_danh_bai_ca_ma_vuong_-_tap_6_final__1__128e11691cba4281b4a66f6128d92bc6_1024x1024.png" alt="Book 8"> 
                        <h3>Vì con gái tôi có thể đánh bại cả Ma Vương</h3>
                        <p>Chirolu</p>
                        <p>24.720 đ</p>
                        <p><button class="button" onclick="window.location.href='Uchi.jsp'">Chi tiết</button></p>
                    </div>
                </div>
                <div class="pagination-btns" style="text-align:center; margin-top: 24px;">
                    <button id="btn-page-1" class="page-btn active" onclick="showFeaturedPage(1)">1</button>
                    <button id="btn-page-2" class="page-btn" onclick="showFeaturedPage(2)">2</button>
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
        .section-box {
            background: #fffbe9;
            border-radius: 18px;
            box-shadow: 0 2px 12px rgba(0,0,0,0.07);
            padding: 32px 24px 24px 24px;
            margin-bottom: 40px;
            width: 100%;
            box-sizing: border-box;
            margin-left: auto;
            margin-right: auto;
            max-width: 1200px;
        }
        .page-btn {
            background: #f3c96b;
            color: #555;
            border: none;
            border-radius: 6px;
            padding: 7px 18px;
            font-size: 1rem;
            cursor: pointer;
            margin: 0 6px;
            font-weight: 600;
            transition: background 0.2s, color 0.2s;
        }
        .page-btn.active, .page-btn:hover {
            background: #e2bc6f;
            color: #fff;
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
        function showFeaturedPage(page) {
            document.getElementById('featured-page-1').style.display = (page === 1) ? '' : 'none';
            document.getElementById('featured-page-2').style.display = (page === 2) ? '' : 'none';
            document.getElementById('btn-page-1').classList.toggle('active', page === 1);
            document.getElementById('btn-page-2').classList.toggle('active', page === 2);
        }
        function showNewPage(page) {
            document.getElementById('new-page-1').style.display = (page === 1) ? '' : 'none';
            document.getElementById('new-page-2').style.display = (page === 2) ? '' : 'none';
            document.getElementById('btn-new-page-1').classList.toggle('active', page === 1);
            document.getElementById('btn-new-page-2').classList.toggle('active', page === 2);
        }
        </script>
    </body>
</html> 