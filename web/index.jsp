<%-- 
    Document   : index
    Created on : 28 thg 3, 2025, 08:08:19
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trang chủ</title>
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
                            <li> <a href=""> Tình cảm </a></li>
                            <li> <a href=""> Học đường </a></li>
                            <li> <a href=""> Hài hước </a></li>
                            <li> <a href=""> Kinh dị </a></li>
                            <li> <a href=""> Xuyên không </a></li>
                        </ul>
                    </li>
                    <li><a href="lienhe.jsp">Liên hệ</a></li>
                    <li><a href="dangnhap.jsp">Đăng nhập</a></li>
                    <li>Giỏ hàng</li>
                </ul>
            </nav>
            
            <div class="banner">
                <div class="slides">
                    <img src="https://th.bing.com/th/id/R.e2dd0187e179cda50383cb675a8dc4f9?rik=gQwcy88itIEjHQ&pid=ImgRaw&r=0" alt="First Image">
                    <img src="https://product.hstatic.net/1000376556/product/img_1163_3f117125171d490786a73bbd8e976ce1_1024x1024.jpeg" alt="Second Image"> 
                    <img src="https://th.bing.com/th/id/OIP.oiOgkTvLclffV_EmcHchFQHaLi?rs=1&pid=ImgDetMain/" alt="Third Image"> 
                    <img src="https://moingay1cuonsach.com.vn/wp-content/uploads/2022/02/to-muon-an-tuy-cua-cau.jpg" alt="Fourth Image"> 
                    <img src="https://cdn0.fahasa.com/media/catalog/product/o/n/one_piece_-_tap_100_-_limited_-_postcard_pvc_1.jpg/" alt="Fifth Image"> 
                    <img src="https://vn-test-11.slatic.net/p/d5e8a3737968262733a383c41c2563cf.jpg" alt="Six Image"> 
                    <img src="https://product.hstatic.net/1000376556/product/vi_con_gai_toi_co_the_danh_bai_ca_ma_vuong_-_tap_6_final__1__128e11691cba4281b4a66f6128d92bc6_1024x1024.png" alt="Severn Image"> 
                    <img src="https://th.bing.com/th/id/R.e2dd0187e179cda50383cb675a8dc4f9?rik=gQwcy88itIEjHQ&pid=ImgRaw&r=0" alt="First Image">
                    <img src="https://product.hstatic.net/1000376556/product/img_1163_3f117125171d490786a73bbd8e976ce1_1024x1024.jpeg" alt="Second Image"> 
                    <img src="https://th.bing.com/th/id/OIP.oiOgkTvLclffV_EmcHchFQHaLi?rs=1&pid=ImgDetMain/" alt="Third Image"> 
                    <img src="https://moingay1cuonsach.com.vn/wp-content/uploads/2022/02/to-muon-an-tuy-cua-cau.jpg" alt="Fourth Image"> 
                    <img src="https://cdn0.fahasa.com/media/catalog/product/o/n/one_piece_-_tap_100_-_limited_-_postcard_pvc_1.jpg/" alt="Fifth Image"> 
                    <img src="https://vn-test-11.slatic.net/p/d5e8a3737968262733a383c41c2563cf.jpg" alt="Six Image"> 
                    <img src="https://product.hstatic.net/1000376556/product/vi_con_gai_toi_co_the_danh_bai_ca_ma_vuong_-_tap_6_final__1__128e11691cba4281b4a66f6128d92bc6_1024x1024.png" alt="Severn Image"> 
                </div>
            </div>
                
                <h1> </h1>
        <form action="search" method="get">
            <tr>
                <td>Tìm kiếm truyện:</td>
                <td><input type="text" name="searchName" /></td>
                <td> <button>Tìm kiếm</button></td>
            </tr>
        </form>
        </header>
        
        <div class="container">
            <div class="header">
                
                <h1> </h1>
                <h1>Truyện nổi bật</h1>
            </div>
            
            <div class="grid">
                <div class="book">
                    <img src="https://th.bing.com/th/id/R.e2dd0187e179cda50383cb675a8dc4f9?rik=gQwcy88itIEjHQ&pid=ImgRaw&r=0" alt="Book 1"> 
                    <h3>Thỏ bảy màu và những người nghĩ nó là bạn</h3>
                    <p>Huỳnh Thái Ngọc</p>
                    <p>68.250 đ</p>
                    <p><button class="button" onclick="window.location.href='Tho7Mau.jsp'">Chi tiết</button></p>
                </div>
                <div class="book">
                    <img src="https://product.hstatic.net/1000376556/product/img_1163_3f117125171d490786a73bbd8e976ce1_1024x1024.jpeg" alt="Book 2"> 
                    <h3>Người lạ bên bờ biển</h3>
                    <p>Kii Kanna</p>
                    <p>58.000 đ</p>
                    <p><button class="button" onclick="window.location.href='NguoiLa.jsp'">Chi tiết</button></p>
                </div>
                <div class="book">
                    <img src="https://cdn0.fahasa.com/media/flashmagazine/images/page_images/doraemon_truyen_ngan___tap_23_tai_ban_2019/2021_06_15_15_46_23_1-390x510.jpg" alt="Book 3"> 
                    <h3>Doraemon Tập 23</h3>
                    <p>Fujiko F Fujio</p>
                    <p>29.800 đ</p>
                    <p><button class="button" onclick="window.location.href='Doraemon.jsp'">Chi tiết</button></p>
                </div>
                <div class="book">
                    <img src="https://th.bing.com/th/id/OIP.oiOgkTvLclffV_EmcHchFQHaLi?rs=1&pid=ImgDetMain" alt="Book 4"> 
                    <h3>thám tử lừng danh Conan Tập 80</h3>
                    <p>Gosho Aoyama</p>
                    <p>28.520 đ</p>
                    <p><button class="button" onclick="window.location.href='Conan.jsp'">Chi tiết</button></p>
                </div>
                <div class="book">
                    <img src="https://cdn0.fahasa.com/media/catalog/product/o/n/one_piece_-_tap_100_-_limited_-_postcard_pvc_1.jpg" alt="Book 5"> 
                    <h3>One Piece Tập 100</h3>
                    <p>Eiichiro Oda</p>
                    <p>77.000 đ</p>
                    <p><button class="button" onclick="window.location.href='OnePiece.jsp'">Chi tiết</button></p>
                </div>
                <div class="book">
                    <img src="https://vn-test-11.slatic.net/p/d5e8a3737968262733a383c41c2563cf.jpg" alt="Book 6"> 
                    <h3>Cô bé quàng khăn đỏ</h3>
                    <p>Nhiều tác giả</p>
                    <p>18.950 đ</p>
                    <p><button class="button" onclick="window.location.href='KhanDo.jsp'">Chi tiết</button></p>
                </div>
                <div class="book">
                    <img src="https://product.hstatic.net/1000376556/product/vi_con_gai_toi_co_the_danh_bai_ca_ma_vuong_-_tap_6_final__1__128e11691cba4281b4a66f6128d92bc6_1024x1024.png" alt="Book 7"> 
                    <h3>Vì con gái tôi có thể đánh bại cả Ma Vương</h3>
                    <p>Chirolu</p>
                    <p>80.250 đ</p>
                    <p><button class="button" onclick="window.location.href='Uchi.jsp'">Chi tiết</button></p>
                </div>
                <div class="book">
                    <img src="https://moingay1cuonsach.com.vn/wp-content/uploads/2022/02/to-muon-an-tuy-cua-cau.jpg" alt="Book 8"> 
                    <h3>Tớ muốn ăn tụy của cậu</h3>
                    <p>Yoru Sumino</p>
                    <p>66.700 đ</p>
                    <p><button class="button" onclick="window.location.href='Tuy.jsp'">Chi tiết</button></p>
                </div>
                <div class="book">
                    <img src="https://mycomics.it/wp-content/uploads/sites/16/2022/09/FUMONEPUV0025.jpg" alt="Book 9"> 
                    <h3>One-Punch Man</h3>
                    <p>Murata YusukeOne</p>
                    <p>90.550 đ</p>
                    <p><button class="button" onclick="window.location.href='OnePunch.jsp'">Chi tiết</button></p>
                </div>
                <div class="book">
                    <img src="https://nhasachphuongnam.com/images/detailed/251/tranh-truyen-dan-gian-viet-nam-chuyen-ong-giong.jpg" alt="Book 10"> 
                    <h3>Chuyện ông Gióng</h3>
                    <p>Nhiều tác giả</p>
                    <p>20.250 đ</p>
                    <p><button class="button" onclick="window.location.href='Giong.jsp'">Chi tiết</button></p>
                </div>
            </div>
            <h1> </h1>
        </div>
        
        <footer>
            <p>&copy; 2025 Nhà sách của CHIPPA</p>
            <p>Mọi thông tin liên hệ qua email: bochip68@gmail.com</p>
            <p>Facebook: Chip Bơ</p>
            <p>Địa chỉ: 68 Đ. Nguyễn Chí Thanh, Láng Thượng, Đống Đa, Hà Nội</p>
        </footer>
        
    </body>
</html>
