package enotesModel;

public class LoginModel {
	String username;
	String cpswd;
	
	public LoginModel() {
		super();
		// TODO Auto-generated constructor stub
	}

	public LoginModel(String username, String cpswd) {
		super();
		this.username = username;
		this.cpswd = cpswd;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getCpswd() {
		return cpswd;
	}

	public void setCpswd(String cpswd) {
		this.cpswd = cpswd;
	}
}
