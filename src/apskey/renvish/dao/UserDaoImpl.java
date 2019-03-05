package apskey.renvish.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import apskey.renvish.pojo.Contacts;
import apskey.renvish.pojo.Dairy;
import apskey.renvish.pojo.SaveUser;
import apskey.renvish.pojo.ShowUsers;
import apskey.renvish.pojo.User;
@Repository("UserDao")
public class UserDaoImpl implements UserDao
{
	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public void userDao(User user) 
	{
			Session session=null;
			Transaction tx=null;
			try 
			{

				session=sessionFactory.openSession();
				tx=session.beginTransaction();
				tx.begin();
				session.saveOrUpdate(user);
				tx.commit();
			} 
			catch (Exception e) 
			{
				tx.rollback();
				e.printStackTrace();
				
			}
			finally
			{
				session.flush();
				session.close();
			}
		
	}
	@Override
	public void userDao(Dairy dairy) 
	{
			Session session=null;
			Transaction tx=null;
			try 
			{

				session=sessionFactory.openSession();
				tx=session.beginTransaction();
				tx.begin();
				session.saveOrUpdate(dairy);
				tx.commit();
			} 
			catch (Exception e) 
			{
				tx.rollback();
				e.printStackTrace();
				
			}
			finally
			{
				session.flush();
				session.close();
			}
		
	}
	@Override
	public void userDao(Contacts contacts) 
	{
			Session session=null;
			Transaction tx=null;
			try 
			{

				session=sessionFactory.openSession();
				tx=session.beginTransaction();
				tx.begin();
				session.saveOrUpdate(contacts);
				tx.commit();
			} 
			catch (Exception e) 
			{
				tx.rollback();
				e.printStackTrace();
				
			}
			finally
			{
				session.flush();
				session.close();
			}
		
	}
	@Override
	public List<Dairy> showDairy(String mobile) {
		Criteria criteria=null;
		List<Dairy> userList=null;
		Session session1=null;
		Transaction tx=null;
		Dairy show=new Dairy(mobile);
		String mobile1=show.getMobile();
		
		
		System.out.println(show.getMobile());
		//HttpSession session =request.getSession(false);
		try
		{
		System.out.println("In Check show");
		session1 = sessionFactory.openSession();
		 Query query = session1.createQuery("from Dairy as s where s.mobile=?");
			query.setParameter(1,mobile1);
		  userList = query.list();
		  System.out.println(userList);
		criteria=session1.createCriteria(Dairy.class);
		
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


