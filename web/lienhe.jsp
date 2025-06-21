<%-- 
    Document   : lienhe
    Created on : 19 thg 4, 2025, 10:03:53
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Liên hệ</title>
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
        <h2>CHIPPA~</h2>
        <p>Cảm ơn các bạn đã luôn theo dõi và ủng hộ Tủ truyện của CHIPPA. Mọi ý kiến, thắc mắc và đóng góp các bạn muốn gửi đến CHIPPA hãy điền vào thông tin dưới đây.</p>
        <form action="RegisterServlet" method="POST">
            <table>
                Tên đăng nhập: <input type="text" name="username" /><br />
                Họ và tên: <input type="text" name="fullName" /><br />
                Email: <input type="text" name="email" /><br />
                Lời góp ý: <input type="text" name="message" /><br />
                <input type="submit" value="Gửi" />
            </table>
            </form>
        <h1> </h1>
        
        <footer>
            <p>&copy; 2025 Nhà sách của CHIPPA</p>
            <p>Mọi thông tin liên hệ qua email: bochip68@gmail.com</p>
            <p>Facebook: Chip Bơ</p>
            <p>Địa chỉ: 68 Đ. Nguyễn Chí Thanh, Láng Thượng, Đống Đa, Hà Nội</p>
        </footer>
        
    </body>
</html>

