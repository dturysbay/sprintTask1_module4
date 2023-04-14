package bitlab.TaskManagement.kz.servlet;


import bitlab.TaskManagement.kz.db.Task;
import bitlab.TaskManagement.kz.db.TaskDBManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/details-update")
public class UpdateServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("task_id"));
        String name = request.getParameter("task_name");
        String description = request.getParameter("task_description");
        String taskDeadline = request.getParameter("task_due_date");
        String taskStatus = request.getParameter("task_is_done");

        Task task = TaskDBManager.getTask(id);
        if(task!=null){
            task.setName(name);
            task.setDescription(description);
            task.setDeadlineDate(taskDeadline);
            task.setTaskStatus(taskStatus);
            TaskDBManager.updateTask(task);
//            response.sendRedirect("/details?task_id="+id);
            response.sendRedirect("/");

        }else{
            response.sendRedirect("/");
        }
    }
}
