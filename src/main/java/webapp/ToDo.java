package webapp;

import java.util.Objects;

public class ToDo {

    private String activity;
    private String category;
    private String email;

    public ToDo(String activity, String category, String email) {
        super();
        this.activity = activity;
        this.category = category;
        this.email = email;
    }

    public String getActivity() {
        return activity;
    }

    public void setActivity(String activity) {
        this.category = activity;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getEmail() { return  email; };

    public void setEmail() { this.email = email; };

    @Override
    public String toString() {
        return "Todo [name=" + activity + "]" + "[category=" + category + "]";
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ToDo toDo = (ToDo) o;
        return Objects.equals(activity, toDo.activity);
    }

    @Override
    public int hashCode() {

        return Objects.hash(activity);
    }
}
