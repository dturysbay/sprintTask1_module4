package bitlab.TaskManagement.kz.db;

import java.util.ArrayList;

public class TaskDBManager {

    private static final ArrayList<Task> tasks  = new ArrayList<>();
    private static Long id = Long.valueOf(2);

    static {
        tasks.add(
                new Task(Long.valueOf(1),
                        "Создать на Веб приложение Java EE",
                        "Создать на Веб приложение Java EE",
                        "2023-04-23",
                        "Нет"
            ));
    }

    public static ArrayList<Task> getTasks(){return tasks;}

    public static void addTask(Task task){
        task.setId(id);
        tasks.add(task);
        id++;
    }

    public static Task getTask(Long id){
        return tasks
                .stream()
                .filter(task -> task.getId()==id)
                .findFirst().orElse(null);
    }

    public static void updateTask(Task updatedTask){
        for(int i=0;i< tasks.size();i++){
            if(tasks.get(i).getId() == updatedTask.getId()){
                tasks.set(i,updatedTask);
                break;
            }
        }
    }

    public static void deleteTask(Long id){
        for (int i = 0; i < tasks.size(); i++) {
            if(tasks.get(i).getId().equals(id)){
                tasks.remove(i);
                break;
            }
        }
    }

}
