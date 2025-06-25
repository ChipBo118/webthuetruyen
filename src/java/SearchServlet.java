import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import truyen.Truyen;
import truyen.TruyenDAO;
import java.util.List;

@WebServlet(name = "SearchServlet", urlPatterns = {"/search"})
public class SearchServlet extends HttpServlet {
    private TruyenDAO truyenDAO;
    
    @Override
    public void init() throws ServletException {
        super.init();
        truyenDAO = new TruyenDAO();
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String searchName = request.getParameter("searchName");
        
        if (searchName != null && !searchName.trim().isEmpty()) {
            List<Truyen> searchResults = truyenDAO.searchTruyen(searchName);
            request.setAttribute("searchResults", searchResults);
            request.setAttribute("searchTerm", searchName);
        }
        
        // Kiểm tra nếu người dùng đã đăng nhập
        String username = (String) request.getSession().getAttribute("username");
        if (username != null) {
            request.getRequestDispatcher("ketquatimkiem_dadangnhap.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("ketquatimkiem.jsp").forward(request, response);
        }
    }
} 