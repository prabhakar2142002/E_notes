package enotesModel;

public class RegisterModel {
String username;
long phno;
String pswd;
String cpswd;

public RegisterModel() {
	super();
	// TODO Auto-generated constructor stub
}

public RegisterModel(String username, long phno, String pswd, String cpswd) {
	super();
	this.username = username;
	this.phno = phno;
	this.pswd = pswd;
	this.cpswd = cpswd;
}

public String getUsername() {
	return username;
}

public void setUsername(String username) {
	this.username = username;
}

public long getPhno() {
	return phno;
}

public void setPhno(long phno) {
	this.phno = phno;
}

public String getPswd() {
	return pswd;
}

public void setPswd(String pswd) {
	this.pswd = pswd;
}

public String getCpswd() {
	return cpswd;
}

public void setCpswd(String cpswd) {
	this.cpswd = cpswd;
}






}
