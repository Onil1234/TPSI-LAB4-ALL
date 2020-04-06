
package tpsi.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "PersonListServlet", urlPatterns = {"/personList"})
public class PersonListServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            List<Person> Osoby = new ArrayList<>();
            Person p1 = new Person("Jan", "Kowalski", "jan@wp.pl");
            Person p2 = new Person("Adam", "Blacharski", "adam@gamil.com");
            Person p3 = new Person("Maria", "Szewczyk", "msz@wp.pl");
            Person p4 = new Person("Szymon", "Bieganik", "szymi@o2.pl");
            Osoby.add(p1);
            Osoby.add(p2);
            Osoby.add(p3);
            Osoby.add(p4);
            request.setAttribute("lista", Osoby);
            request.getRequestDispatcher("personList.jsp").forward(request, response);
            /**
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet PersonListServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PersonListServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");*/
        }
    }


}
