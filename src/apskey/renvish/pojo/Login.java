package apskey.renvish.pojo;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="users")
public class Login 
{
@Id
@NotEmpty(message="Enter your Mobile Number")
@Size(min=10,max=12)
private String mobile;
@NotEmpty(message="Enter your Password")
@Size(min=8,max=12)
private String password;



public String getMobile() {
	return mobile;
}
public void setMobile(String mobile) {
	this.mobile = mobile;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
@Override
public String toString() {
	return "Login [mobile=" + mobile + ", password=" + password + "]";
}



}
