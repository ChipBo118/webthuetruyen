import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.*;

@WebServlet("/cart")
public class CartServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        HttpSession session = request.getSession();
        List<Map<String, String>> cart = (List<Map<String, String>>) session.getAttribute("cart");
        if (cart == null) cart = new ArrayList<>();

        if ("remove".equals(action)) {
            String tenTruyen = request.getParameter("tenTruyen");
            cart.removeIf(item -> item.get("tenTruyen").equals(tenTruyen));
            session.setAttribute("cart", cart);
            response.sendRedirect("GioHang.jsp");
            return;
        }

        // Thêm vào giỏ hàng như cũ
        String tenTruyen = request.getParameter("tenTruyen");
        String tacGia = request.getParameter("tacGia");
        String gia = request.getParameter("gia");
        String anhBia = request.getParameter("anhBia");
        boolean exists = false;
        for (Map<String, String> item : cart) {
            if (item.get("tenTruyen").equals(tenTruyen)) {
                exists = true;
                break;
            }
        }
        if (!exists && tenTruyen != null) {
            Map<String, String> item = new HashMap<>();
            item.put("tenTruyen", tenTruyen);
            item.put("tacGia", tacGia);
            item.put("gia", gia);
            item.put("anhBia", anhBia);
            cart.add(item);
        }
        session.setAttribute("cart", cart);
        response.sendRedirect("GioHang.jsp");
    }
} 