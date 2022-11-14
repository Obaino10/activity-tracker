package webapp;

import java.util.ArrayList;
import java.util.List;

public class ToDoList {
    private static ArrayList<ToDo> todo = new ArrayList<ToDo>();
    static{
        todo.add(new ToDo("Task 1", "study", "dummy@gmail.com"));
        todo.add(new ToDo("Task 2", "fun","dummy@gmail.com"));
        todo.add(new ToDo("Task 3", "health","dumay@gmail.com"));
    }
    public List<ToDo> ToDoRetrive(){
        return todo;
    }
    public void addToDo(ToDo todoNew){
        todo.add(todoNew);
    }
    public void deleteToDo(ToDo todoOld){
        todo.remove(todoOld);
    }
}
