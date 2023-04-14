package bitlab.TaskManagement.kz.servlet;

import bitlab.TaskManagement.kz.db.Task;
import bitlab.TaskManagement.kz.db.TaskDBManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.awt.print.Book;
import java.io.IOException;

@WebServlet(value = "/add-task")
public class AddTaskServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("task_name");
        String description = request.getParameter("task_description");
        String dueDate = request.getParameter("task_due_date");


        Task task = new Task();
        task.setName(name);
        task.setDescription(description);
        task.setDeadlineDate(dueDate);
        task.setTaskStatus("Нет");
        TaskDBManager.addTask(task);
        response.sendRedirect("/");
    }
}
