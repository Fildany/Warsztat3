package pl.coderslab.users;

import pl.coderslab.entity.User;
import pl.coderslab.entity.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user/show")
public class UserShow extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        UserDao userDao = new UserDao();

        User user = userDao.find(Integer.parseInt(request.getParameter("id")));

        request.setAttribute("user", user);

        getServletContext().getRequestDispatcher("/users/show.jsp").forward(request, response);
    }

}



