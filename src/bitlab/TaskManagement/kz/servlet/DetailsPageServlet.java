package bitlab.TaskManagement.kz.servlet;

import bitlab.TaskManagement.kz.db.Task;
import bitlab.TaskManagement.kz.db.TaskDBManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/details")
public class DetailsPageServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id = Long.valueOf(-1);
        try{
            id = Long.parseLong(request.getParameter("task_id"));
        }catch (Exception e){}

        Task task = TaskDBManager.getTask(id);

        request.setAttribute("task",task);
        request.getRequestDispatcher("/details.jsp").forward(request,response);
    }
}
