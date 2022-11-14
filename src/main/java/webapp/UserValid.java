package webapp;

public class UserValid {
    public boolean userValidation(String name, String password){
        if(name.equals("namu") && password.equals("namu1234")){
            return true;
        }
        return false;
    }
}
