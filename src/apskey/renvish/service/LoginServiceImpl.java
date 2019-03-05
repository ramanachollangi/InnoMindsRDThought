package apskey.renvish.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import apskey.renvish.dao.LoginDao;
@Service("loginService")
public class LoginServiceImpl implements LoginService{
	 @Autowired
	 private LoginDao loginDAO;

	   public void setLoginDAO(LoginDao loginDAO) {
              this.loginDAO = loginDAO;
       }
      
       public boolean checkLogin(String mobile, String password){
              System.out.println("In Service class...Check Login");
              return loginDAO.checkLogin(mobile,password);
       }
}
