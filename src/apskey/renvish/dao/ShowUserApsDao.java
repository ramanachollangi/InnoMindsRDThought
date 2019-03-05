package apskey.renvish.dao;

import java.util.List;

import apskey.renvish.pojo.SaveUser;
import apskey.renvish.pojo.ShowUsers;

public interface ShowUserApsDao {
	public List<SaveUser> showAps(String mobile, String accoType);
}
