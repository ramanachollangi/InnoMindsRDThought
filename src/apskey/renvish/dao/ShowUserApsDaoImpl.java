package apskey.renvish.dao;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import apskey.renvish.pojo.SaveUser;
import apskey.renvish.pojo.ShowUsers;
@Repository("showuserapsdao")
public class ShowUserApsDaoImpl implements ShowUserApsDao {
	  @Resource(name="sessionFactory")
      protected SessionFactory sessionFactory;

      public void setSessionFactory(SessionFactory sessionFactory) {
             this.sessionFactory = sessionFactory;
      }
     
      protected Session getSession(){
             return sessionFactory.openSession();
      }

	@Override
	public List<SaveUser> showAps(String mobile, String accoType) {
		Criteria criteria=null;
		List<SaveUser> userList=null;
		Session session1=null;
		Transaction tx=null;
		ShowUsers show=new ShowUsers(accoType,mobile);
		String mobile1=show.getMobile();
		String accoType1=show.getAccoType();
		System.out.println(show.getAccoType());
		System.out.println(show.getMobile());
		//HttpSession session =request.getSession(false);
		try
		{
		System.out.println("In Check show");
		session1 = sessionFactory.openSession();
		 Query query = session1.createQuery("from SaveUser as s where s.accoType=? and s.mobile=?");
			query.setParameter(0,accoType1);
			query.setParameter(1,mobile1);
		  userList = query.list();
		  System.out.println(userList);
		criteria=session1.createCriteria(SaveUser.class);
		criteria.add(Restrictions.eq("accoType", accoType1 ));
		criteria.add( Restrictions.eq("mobile", mobile1 ));
		userList=criteria.list();
		String user=userList.toString();
		System.out.println(user);
		System.out.println(userList);
		}catch (Exception e) {
			tx.rollback();
			e.printStackTrace();

		}finally{
			session1.flush();
			session1.close();
		}

		return userList;
	}

}
