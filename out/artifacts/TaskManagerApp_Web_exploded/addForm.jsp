<form action="/add-task" method="post">
    <div class="row mt-3">
        <div class="col-12">
            <label class="col-12">Name:</label>
        </div>
    </div>
    <div class="row mt-2">
        <div class="col-12">
            <input type="text" class="form-control" name="task_name">
        </div>
    </div>

    <div class="row mt-3">
        <div class="col-12">
            <label class="col-12">Description:</label>
        </div>
    </div>
    <div class="row mt-2">
        <div class="col-12">
            <textarea name="task_description" class="form-control " rows="5"></textarea>
        </div>
    </div>

    <div class="row mt-3">
        <div class="col-12">
            <label class="col-12">Due date:</label>
        </div>
    </div>
    <div class="row mt-2">
        <div class="col-12">
            <input type="date" class="form-control" name="task_due_date">
        </div>
    </div>

    <div class="row mt-3">
        <div class="col-12">
            <button class="btn" style="background: #1f1a62;color: white">ADD TASK</button>
        </div>
    </div>
</form>