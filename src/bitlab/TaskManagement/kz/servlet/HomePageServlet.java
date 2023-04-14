package bitlab.TaskManagement.kz.servlet;

import bitlab.TaskManagement.kz.db.Task;
import bitlab.TaskManagement.kz.db.TaskDBManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value = "/home.html")
public class HomePageServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<Task> tasks = TaskDBManager.getTasks();
        request.setAttribute("tasks",tasks );
        request.getRequestDispatcher("/tasks.jsp").forward(request,response);
    }
}
