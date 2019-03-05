package apskey.renvish.pojo;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="saveaps")
public class ShowUsers {
public ShowUsers(String mobile, String accoType) {
		super();
		this.mobile = mobile;
		this.accoType = accoType;
	}
@Id
private String mobile;
private String accoType;

public String getMobile() {
	return mobile;
}
public void setMobile(String mobile) {
	this.mobile = mobile;
}
public String getAccoType() {
	return accoType;
}
public void setAccoType(String accoType) {
	this.accoType = accoType;
}
@Override
public String toString() {
	return "ShowUsers [mobile=" + mobile + ", accoType=" + accoType + "]";
}


}
