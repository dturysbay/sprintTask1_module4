<%@ page import="bitlab.TaskManagement.kz.db.Task" %><%--
  Created by IntelliJ IDEA.
  User: dinmukhambetturysbay
  Date: 11.04.2023
  Time: 01:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Details</title>
    <%@include file="config.jsp"%>
</head>
<body>
    <%@include file="tasksNavbar.jsp"%>
    <div class="col-6 mx-auto mt-5">
        <%
            Task task = (Task) request.getAttribute("task");
            if(task!=null){
        %>
        <form action="/details-update" method="post">
            <input type="hidden" name="task_id" value="<%=task.getId()%>">
            <div class="row mt-3">
                <div class="col-12">
                    <label class="col-12">Name:</label>
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-12">
                    <input type="text" class="form-control" name="task_name" value="<%=task.getName()%>">
                </div>
            </div>

            <div class="row mt-3">
                <div class="col-12">
                    <label class="col-12">Description:</label>
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-12">
                    <textarea name="task_description" class="form-control" rows="5"><%=task.getDescription()%></textarea>
                </div>
            </div>

            <div class="row mt-3">
                <div class="col-12">
                    <label class="col-12">Due date:</label>
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-12">
                    <input type="date" class="form-control" name="task_due_date" value="<%=task.getDeadlineDate()%>">
                </div>
            </div>

            <div class="row mt-3">
                <div class="col-12">
                    <label class="col-12">Done:</label>
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-12">
                    <select name="task_is_done">
                        <option <%=task.getTaskStatus() == "Да" ? "selected" : ""%>>Да</option>
                        <option <%=task.getTaskStatus() == "Нет" ? "selected" : ""%>>Нет</option>
                    </select>
                </div>
            </div>
            <div class="row mt-3">
                    <button type="button" class="btn btn-outline-info ms-2">
                        <a href="/">Back</a>
                    </button>
            </div>
            <div class="row mt-3">
                <button type="submit" class="btn btn-success ms-2" data-bs-toggle="modal" data-bs-target="#deleteTask">
                    Update
                </button>
            </div>
<%--            <form action="/delete">--%>
<%--                <input type="hidden" name="task_id" value="<%=task.getId()%>">--%>
<%--                <div class="row mt-3">--%>
<%--                    <div class="col-12">--%>
<%--                        <button type="button" class="btn btn-danger">Delete</button>--%>
<%--                    </div>--%>
<%--                </div>--%>
                <div class="row mt-3">
                    <button type="button" class="btn btn-danger ms-2" data-bs-toggle="modal" data-bs-target="#deleteTask">
                        Delete
                    </button>
                </div>

                <!-- Modal -->
                <div class="modal fade" id="deleteTask" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <form action="/delete-task" method="post">
                                <div class="modal-header">
                                    <h1 class="modal-title fs-5">Confirm delete</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <h5 class="text-center">Are you sure?</h5>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">No</button>

                                        <input type="hidden" name="task_id" value="<%=task.getId()%>">
                                        <button  class="btn btn-danger">Yes</button>


                                </div>
                            </form>
                        </div>
                    </div>
                </div>
<%--            </form>--%>


        </form>

        <%
            }
        %>


    </div>
</body>
</html>
