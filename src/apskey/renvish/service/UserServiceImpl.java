package apskey.renvish.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import apskey.renvish.dao.UserDao;
import apskey.renvish.pojo.Contacts;
import apskey.renvish.pojo.Dairy;
import apskey.renvish.pojo.SaveUser;
import apskey.renvish.pojo.User;
@Service("UserService")
public class UserServiceImpl implements UserService 
{
	@Autowired
    private JavaMailSender mailSender;
	@Autowired
	private UserDao Dao;
	@Override
	@Transactional(readOnly=false, propagation=Propagation.REQUIRES_NEW)
	public void saveUser(User user)
	{
		try 
		{
				Dao.userDao(user);
		} 
		catch (Exception e) 
		{
				e.printStackTrace();
			
		}
	}
	@Override
	public void saveUser(Dairy dairy)
	{
		try 
		{
				Dao.userDao(dairy);
		} 
		catch (Exception e) 
		{
				e.printStackTrace();
			
		}
	}
	@Override
	public void send(Contacts contacts)
	{
		 SimpleMailMessage email = new SimpleMailMessage();
		 mailSender.send(email);
	}


	@Override
	public List<Dairy> showDairy(String mobile) {
	
	              System.out.println("In Service class...Check Show");
	              return Dao.showDairy(mobile);
	       }

	}



