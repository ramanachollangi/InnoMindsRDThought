package apskey.renvish.dao;

import java.util.List;

import apskey.renvish.pojo.Contacts;
import apskey.renvish.pojo.Dairy;
import apskey.renvish.pojo.SaveUser;
import apskey.renvish.pojo.User;

public interface UserDao {
public void userDao(User user);
public void userDao(Dairy dairy);
public List<Dairy> showDairy(String mobile);
public void userDao(Contacts contacts);
}
