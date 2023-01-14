//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//

package wcl.web;

import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet({"/loginServlet"})
public class LoginServlet extends HttpServlet {
    public LoginServlet() {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String remember = request.getParameter("remember");
        String content = request.getContextPath();
        String num = "1";
        if (num.equals(remember)) {
            Cookie cUsername = new Cookie("username", username);
            Cookie cPassword = new Cookie("password", password);
            cUsername.setMaxAge(2592000);
            cPassword.setMaxAge(2592000);
            response.addCookie(cUsername);
            response.addCookie(cPassword);
        }

        HttpSession session = request.getSession();
        session.setAttribute("username", username);
        response.sendRedirect(content + "/selectAllServlet");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        this.doGet(request, response);
    }
}
