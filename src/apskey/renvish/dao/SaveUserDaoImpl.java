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
import apskey.renvish.pojo.SaveUser;
@Repository("SaveUserDao")
public class SaveUserDaoImpl implements SaveUserDao {
	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public void userDao(SaveUser saveuser) {
		
		Session session=null;
		Transaction tx=null;
		try 
		{

			session=sessionFactory.openSession();
			tx=session.beginTransaction();
			tx.begin();
			session.saveOrUpdate(saveuser);
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
	public List<SaveUser> showUser(SaveUser user) {
		Session session=null;
		Transaction tx=null;
		Criteria criteria=null;
		List<SaveUser> userList=null;
		try {

			session=sessionFactory.openSession();
			tx=session.beginTransaction();
			tx.begin();
			System.out.println("dao");
			 Query queryResult = session.createQuery("from SaveUser as s where s.accoType=:accoType and s.useremail=:useremail");
			 queryResult.setString("accoType", "Facebook");
			 queryResult.setString("useremail", "tallurichandrasekhar143@gmail.com");
			 List result = queryResult.list();
			 
			 System.out.println(result);
			 System.out.println("welcome");
			 
			criteria=session.createCriteria(SaveUser.class);
			criteria.add( Restrictions.like("accoType", "(user.getAccoType());") );
			criteria.add( Restrictions.like("useremail", "user.getUseremail();") );
			System.out.println("done dao");
			userList=criteria.list();
			tx.commit();
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();

		}finally{
			session.flush();
			session.close();
		}

		return userList;

	

}
}