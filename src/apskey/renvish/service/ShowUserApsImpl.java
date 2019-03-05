package apskey.renvish.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import apskey.renvish.dao.ShowUserApsDao;
import apskey.renvish.pojo.SaveUser;
import apskey.renvish.pojo.ShowUsers;
@Service("showuseraps")
public class ShowUserApsImpl implements ShowUserAps {
	 @Autowired
	 private ShowUserApsDao showDao;
	public void setShowDao(ShowUserApsDao showDao)
	{
		this.showDao = showDao;
	}


	@Override
	public List<SaveUser> showAps(String mobile, String accoType) {
	
	              System.out.println("In Service class...Check Show");
	              return showDao.showAps(mobile, accoType);
	       }

	}


