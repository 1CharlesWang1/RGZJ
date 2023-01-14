package wcl.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet({"/indexServlet"})
public class indexServlet extends HttpServlet {
    public indexServlet() {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cookie[] cookies = request.getCookies();
        String username = null;
        Cookie[] var5 = cookies;
        int var6 = cookies.length;

        for(int var7 = 0; var7 < var6; ++var7) {
            Cookie cookie = var5[var7];
            String name = cookie.getName();
            if ("username".equals(name)) {
                username = cookie.getValue();
                break;
            }
        }

        if (username != null) {
            HttpSession session = request.getSession();
            String content = request.getContextPath();
            session.setAttribute("username", username);
            response.sendRedirect(content + "/message.jsp");
        } else {
            response.sendRedirect("login.jsp");
        }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}