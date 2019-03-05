package apskey.renvish.pojo;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "dairy")
public class Dairy {
@Id
@GeneratedValue(strategy = GenerationType.AUTO)
private int id;
private Date date;
private String mobile;

 public Dairy() {
	super();
}
public Dairy(String mobile) {
	super();
	this.mobile = mobile;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getMobile() {
	return mobile;
}
public void setMobile(String mobile) {
	this.mobile = mobile;
}
@Column(name = "description",length = 256)
private String textArea;
public Date getDate() {
	return date;
}
public void setDate(Date date) {
	this.date = date;
}
public String getTextArea() {
	return textArea;
}
public void setTextArea(String textArea) {
	this.textArea = textArea;
}
@Override
public String toString() {
	return "Dairy [id=" + id + ", date=" + date + ", mobile=" + mobile + ", textArea=" + textArea + "]";
}



}


