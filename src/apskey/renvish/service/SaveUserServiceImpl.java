package apskey.renvish.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import apskey.renvish.dao.SaveUserDao;

import apskey.renvish.pojo.SaveUser;
@Service("SaveUserService")
public class SaveUserServiceImpl implements SaveUserService {
	@Autowired
	private SaveUserDao Dao;
	@Override
	public void saveUser(SaveUser saveuser) {
		try 
		{
				Dao.userDao(saveuser);
		} 
		catch (Exception e) 
		{
				e.printStackTrace();
			
		}

	}
	@Override
	public List<SaveUser> showUser(SaveUser user) {
	List<SaveUser> userList=null;
		try {
			userList=Dao.showUser(user);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return userList;
	}



}
