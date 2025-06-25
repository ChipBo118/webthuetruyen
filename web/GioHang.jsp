<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%
    String username = (String) session.getAttribute("username");
    if (username == null) username = "Chippa";
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Giỏ hàng</title>
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
    .confirm-modal-bg {
        position: fixed; left: 0; top: 0; width: 100vw; height: 100vh;
        background: rgba(0,0,0,0.25); z-index: 9999; display: flex; align-items: center; justify-content: center;
    }
    .confirm-modal {
        background: #fffbe8; border-radius: 12px; box-shadow: 0 2px 16px rgba(0,0,0,0.18);
        padding: 32px 36px 24px 36px; min-width: 320px; text-align: center;
    }
    .confirm-modal p { color: #222; font-size: 1.1rem; margin-bottom: 24px; }
    .confirm-modal .btn-modal {
        padding: 8px 22px; border-radius: 8px; font-size: 1rem; font-weight: 600; border: none; cursor: pointer; margin: 0 12px;
    }
    .confirm-modal .btn-modal.confirm { background: #e91e63; color: #fff; }
    .confirm-modal .btn-modal.cancel { background: #8eb695; color: #222; }
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
    </header>
    <div class="cart-container">
        <div class="cart-header-row">
            <h2><i class="fa fa-shopping-cart"></i> Giỏ hàng của bạn</h2>
        </div>
        <div class="cart-body">
            <div class="cart-list">
                <%-- Hiển thị các truyện trong giỏ hàng từ session --%>
                <%
                List<Map<String, String>> cart = (List<Map<String, String>>) session.getAttribute("cart");
                if (cart != null && !cart.isEmpty()) {
                    for (Map<String, String> item : cart) {
                %>
                <div class="cart-item">
                    <input type="checkbox" class="cart-select" style="margin-right: 14px; width: 20px; height: 20px; accent-color: #6a9c7c;">
                    <img src="<%= item.get("anhBia") %>" alt="Bìa truyện">
                    <div class="cart-info" style="flex:2; min-width:120px;">
                        <div class="cart-title" style="color:#222; margin-bottom: 7 px;"><%= item.get("tenTruyen") %></div>
                        <div class="cart-meta" style="color:#222;">Tác giả: <%= item.get("tacGia") %></div>
                    </div>
                    <div class="cart-meta" style="flex:1; min-width:80px; text-align:center;">
                        <!-- Thêm tag thể loại nếu muốn -->
                    </div>
                    <div class="cart-price" style="flex:1; min-width:80px; text-align:center;" data-price="<%= item.get("gia") %>"><%= String.format("%,.0f", Double.parseDouble(item.get("gia"))) %> đ/ngày</div>
                    <div class="cart-actions" style="flex:1; min-width:120px; justify-content:center; gap:6px;">
                        <button class="btn-qty" onclick="changeDays(this, -1)">-</button>
                        <input type="number" value="1" min="1" class="days-input" style="width:48px; text-align:center;" onchange="updateTotal(this)"> ngày
                        <button class="btn-qty" onclick="changeDays(this, 1)">+</button>
                    </div>
                    <div class="cart-total-price" style="flex:1; min-width:100px; text-align:center; color:#e65100; font-weight:bold;"><%= String.format("%,.0f", Double.parseDouble(item.get("gia"))) %> đ</div>
                    <div class="cart-actions" style="flex:0.7; min-width:70px; justify-content:center;">
                        <form action="cart" method="post" style="display:inline;">
                            <input type="hidden" name="action" value="remove"/>
                            <input type="hidden" name="tenTruyen" value="<%= item.get("tenTruyen") %>"/>
                            <button type="submit" class="btn-remove">Xóa</button>
                        </form>
                    </div>
                </div>
                <%
                    }
                } else {
                %>
                <div style="padding: 32px; text-align: center; color: #e65100; font-size: 1.2rem;">Giỏ hàng của bạn đang trống.</div>
                <%
                }
                %>
            </div>
        </div>
        <div class="cart-summary" style="display: flex; align-items: center; gap: 32px; justify-content: center; background: none; box-shadow: none; border-left: none; padding: 18px 0 0 0; margin-top: 32px; flex-wrap: nowrap;">
            <input type="checkbox" id="select-all" style="margin-right: 8px; width: 20px; height: 20px; accent-color: #6a9c7c;">
            <label for="select-all" style="margin-right: 18px; font-size: 1.08rem; cursor:pointer; color:#222; white-space:nowrap;">
                Chọn Tất Cả (<span id="cart-count">2</span>)
            </label>
            <span style="font-size: 1.08rem; color:#222; white-space:nowrap;">Đã chọn: <span id="selected-count">2</span> truyện</span>
            <span style="font-size: 1.15rem; color:#222; margin-left: 32px; white-space:nowrap;">Tổng cộng: <span id="cart-total" style="color:#e65100; font-weight:bold;">80.250 đ</span></span>
            <button class="btn-checkout" style="margin-left: 32px; background: #ff5722; color: #fff; font-size: 1.1rem; padding: 12px 32px; border-radius: 8px; font-weight: bold; border: none; cursor: pointer; white-space:nowrap;">Thanh toán</button>
        </div>
    </div>
    <footer>
        <p>&copy; 2025 Nhà sách của CHIPPA</p>
        <p>Mọi thông tin liên hệ qua email: bochip68@gmail.com</p>
        <p>Facebook: Chip Bơ</p>
        <p>Địa chỉ: 68 Đ. Nguyễn Chí Thanh, Láng Thượng, Đống Đa, Hà Nội</p>
    </footer>
    <script>
    function formatVND(num) {
        return num.toLocaleString('vi-VN') + ' đ';
    }
    function updateTotal(input) {
        const cartItem = input.closest('.cart-item');
        const pricePerDay = parseInt(cartItem.querySelector('.cart-price').getAttribute('data-price'));
        let days = parseInt(input.value) || 1;
        if(days < 1) days = 1;
        input.value = days;
        const total = pricePerDay * days;
        cartItem.querySelector('.cart-total-price').textContent = formatVND(total);
    }
    function changeDays(btn, delta) {
        const input = btn.parentNode.querySelector('.days-input');
        let val = parseInt(input.value) || 1;
        val += delta;
        if(val < 1) val = 1;
        input.value = val;
        updateTotal(input);
    }
    function updateCartSummary() {
        const items = document.querySelectorAll('.cart-item');
        const checkboxes = document.querySelectorAll('.cart-select');
        const checked = document.querySelectorAll('.cart-select:checked');
        let total = 0;
        checked.forEach(cb => {
            const item = cb.closest('.cart-item');
            const pricePerDay = parseInt(item.querySelector('.cart-price').getAttribute('data-price'));
            const days = parseInt(item.querySelector('.days-input').value) || 1;
            total += pricePerDay * days;
        });
        document.getElementById('cart-count').textContent = items.length;
        document.getElementById('selected-count').textContent = checked.length;
        document.getElementById('cart-total').textContent = total.toLocaleString('vi-VN') + ' đ';
        document.getElementById('select-all').checked = (checked.length === items.length && items.length > 0);
    }
    document.querySelectorAll('.cart-select').forEach(cb => {
        cb.addEventListener('change', updateCartSummary);
    });
    document.getElementById('select-all').addEventListener('change', function() {
        const checked = this.checked;
        document.querySelectorAll('.cart-select').forEach(cb => { cb.checked = checked; });
        updateCartSummary();
    });
    document.querySelectorAll('.days-input').forEach(input => {
        input.addEventListener('change', updateCartSummary);
    });
    window.onload = updateCartSummary;
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