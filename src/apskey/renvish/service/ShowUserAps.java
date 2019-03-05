package apskey.renvish.service;

import java.util.List;

import apskey.renvish.pojo.SaveUser;
import apskey.renvish.pojo.ShowUsers;

public interface ShowUserAps {
public List<SaveUser> showAps(String mobile, String accoType);
}
