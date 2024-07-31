package zagui.config;

public enum Constants {
    LOGIN_PAGE("https://co.indeed.com/");

    private final String constants;

    Constants(String constants) {
        this.constants = constants;
    }
    
    public String getConstants(){
        return constants;
    }
}
