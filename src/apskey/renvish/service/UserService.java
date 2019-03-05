package apskey.renvish.service;

import java.util.List;

import apskey.renvish.pojo.Contacts;
import apskey.renvish.pojo.Dairy;
import apskey.renvish.pojo.SaveUser;
import apskey.renvish.pojo.User;

public interface UserService {
	public void saveUser(User user);
	public void saveUser(Dairy dairy);
	public List<Dairy> showDairy(String mobile);
	public void send(Contacts contacts);
}
