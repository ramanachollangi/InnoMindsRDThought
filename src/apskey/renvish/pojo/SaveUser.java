
package apskey.renvish.pojo;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;
@Entity
@Table(name="saveaps")
public class SaveUser  {
@Id
@GeneratedValue(strategy = GenerationType.AUTO)
private int id;
@NotEmpty
private String apsUserName;
@NotEmpty
private String apsPassword;
private String accoType;
private String mobile;
public String getMobile() {
	return mobile;
}
public void setMobile(String mobile) {
	this.mobile = mobile;
}
public String getApsUserName() {
	return apsUserName;
}
public void setApsUserName(String apsUserName) {
	this.apsUserName = apsUserName;
}
public String getApsPassword() {
	return apsPassword;
}
public void setApsPassword(String apsPassword) {
	this.apsPassword = apsPassword;
}
public String getAccoType() {
	return accoType;
}
public void setAccoType(String accoType) {
	this.accoType = accoType;
}
@Override
public String toString() {
	return "SaveUser [id=" + id + ", apsUserName=" + apsUserName + ", apsPassword=" + apsPassword + ", accoType="
			+ accoType + ", mobile=" + mobile + "]";
}

}
