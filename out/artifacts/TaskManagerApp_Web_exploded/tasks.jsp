<%@ page import="java.util.ArrayList" %>
<%@ page import="bitlab.TaskManagement.kz.db.Task" %>
<%--Created by IntelliJ IDEA.--%>
<%--  User: dinmukhambetturysbay--%>
<%--  Date: 10.04.2023--%>
<%--  Time: 03:37--%>
<%--  To change this template use File | Settings | File Templates.--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  %>
<html>
<head lang="ru">
    <title>Tasks</title>
    <%@include file="config.jsp"%>
</head>
<body>
<%@include file="tasksNavbar.jsp"%>
<div class="container">
    <div class="row mt-3">
        <div class="col-12">
            <button type="button" style="background: #1f1a62;color: white" class="btn btn-sm" data-bs-toggle="modal" data-bs-target="#addTask">
                + Add task
            </button>

            <div class="modal fade" id="addTask" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="exampleModalLabel">Add task</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <%@include file="addForm.jsp"%>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container mt-5">
    <div class="row">
        <div class="col-12">
            <table class="table table-striped table-hover">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Наименование</th>
                    <th>Крайний срок</th>
                    <th>Выполнено</th>
                    <th>Детали</th>
                </tr>
                </thead>
                <tbody>
                <%
                    ArrayList<Task> tasks = (ArrayList<Task>) request.getAttribute("tasks");
                    if(tasks!=null){
                        for(Task task:tasks){
                %>
                <tr>
                    <td><%=task.getId()%></td>
                    <td><%=task.getName()%></td>
                    <td><%=task.getDeadlineDate()%></td>
                    <td><%=task.getTaskStatus()%></td>
                    <td>
                        <a class="btn" style="background: #1f1a62;color: white" href="/details?task_id=<%=task.getId()%>">Детали</a>
                    </td>
                </tr>
                <%
                        }
                    }
                %>
                </tbody>
            </table>
        </div>
    </div>
</div>

</body>
</html>
