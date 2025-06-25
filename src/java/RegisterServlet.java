import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import truyen.User;
import truyen.UserDAO;

@WebServlet(name = "RegisterServlet", urlPatterns = {"/RegisterServlet"})
public class RegisterServlet extends HttpServlet {
    
    private UserDAO userDAO;
    
    @Override
    public void init() throws ServletException {
        super.init();
        userDAO = new UserDAO();
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String confirm = request.getParameter("confirm");
        String email = request.getParameter("email");
        
        System.out.println("Attempting to register user: " + username);
        
        // Validate input
        if (username == null || username.trim().isEmpty() ||
            password == null || password.trim().isEmpty() ||
            confirm == null || confirm.trim().isEmpty() ||
            email == null || email.trim().isEmpty()) {
            
            System.out.println("Registration failed: Missing required fields");
            request.setAttribute("error", "Vui lòng điền đầy đủ thông tin!");
            request.getRequestDispatcher("dangky.jsp").forward(request, response);
            return;
        }
        
        // Check if passwords match
        if (!password.equals(confirm)) {
            System.out.println("Registration failed: Passwords don't match");
            request.setAttribute("error", "Mật khẩu xác nhận không khớp!");
            request.getRequestDispatcher("dangky.jsp").forward(request, response);
            return;
        }
        
        try {
            // Check if username exists
            if (userDAO.isUsernameExists(username)) {
                System.out.println("Registration failed: Username already exists");
                request.setAttribute("error", "Tên đăng nhập đã tồn tại!");
                request.getRequestDispatcher("dangky.jsp").forward(request, response);
                return;
            }
            
            // Create new user
            User newUser = new User(username, password, email);
            if (userDAO.registerUser(newUser)) {
                System.out.println("Registration successful for user: " + username);
                // Registration successful - redirect to login page
                response.sendRedirect("dangnhap.jsp");
            } else {
                System.out.println("Registration failed: Database error");
                request.setAttribute("error", "Đăng ký thất bại. Vui lòng thử lại!");
                request.getRequestDispatcher("dangky.jsp").forward(request, response);
            }
        } catch (Exception e) {
            System.err.println("Error during registration: " + e.getMessage());
            e.printStackTrace();
            request.setAttribute("error", "Có lỗi xảy ra: " + e.getMessage());
            request.getRequestDispatcher("dangky.jsp").forward(request, response);
        }
    }
    
    @Override
    public String getServletInfo() {
        return "RegisterServlet handles user registration";
    }
} 