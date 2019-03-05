package apskey.renvish.dao;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.List;
import java.util.Random;
import javax.annotation.Resource;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
@Repository("loginDAO")
public class LoginDaoImpl implements LoginDao {
	   @Resource(name="sessionFactory")
       protected SessionFactory sessionFactory;

       public void setSessionFactory(SessionFactory sessionFactory) {
              this.sessionFactory = sessionFactory;
       }
      
       protected Session getSession(){
              return sessionFactory.openSession();
       }
public boolean checkLogin(String mobile,String password) 
{
	System.out.println("In Check login");
	Session session = sessionFactory.openSession();
	boolean userFound = false;
	//Query using Hibernate Query Language
	String SQL_QUERY =" from User as o where o.mobile=? and o.password=?";
	Query query = session.createQuery(SQL_QUERY);
	query.setParameter(0,mobile);
	query.setParameter(1,password);
	List list = query.list();
	if ((list != null) && (list.size() > 0)) {
		userFound= true;
	
		Random r = new Random();
		String otp = new String();
		for(int i=0 ; i < 4 ; i++) {
			otp += r.nextInt(10);
		}
	    	System.out.println(otp);
		
		 System.out.println(mobile);
		 	String username ="varalakshmi";
	   
		 	String password1 ="varalakshmi123";
		 try {
			     String sender="appskey";
			    		 String type="1";
			     String dnd_check="0";
			     String q = "username=" + URLEncoder.encode (username, "UTF-8");
			     q += "&" + "password=" + URLEncoder.encode (password1, "UTF-8");
			    //q += "&" + "to ="+ URLEncoder.encode (Mob, "UTF-8");;
			     q += "&" + "to=" + mobile;
			     q += "&" + "msg=" + URLEncoder.encode (otp, "UTF-8");
			     q += "&" + "from=" + URLEncoder.encode (sender, "UTF-8");
			   	 q += "&" + "type=" + URLEncoder.encode (type, "UTF-8");
			   	 q += "&" + "dnd_check=" + URLEncoder.encode (dnd_check, "UTF-8");
			     String MATRIXURL= "http://182.18.165.185/API/sms.php?";
			     
			     URL url = new URL (MATRIXURL);
			     URLConnection conn = url.openConnection();
			     conn.setDoOutput (true);
			     OutputStreamWriter wr = new OutputStreamWriter (conn.getOutputStream());
			     wr.write (q);
			     wr.flush();
			         
			     BufferedReader rd = new BufferedReader (new InputStreamReader (conn.getInputStream()));
			     String line;
			     System.out.println ("Matrix API Response :");
			     while ((line = rd.readLine()) != null) { System.out.println (line); }
			     wr.close();
			     rd.close();
			     Class.forName("com.mysql.jdbc.Driver");
					
					
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/apskey", "root", "");
					
					PreparedStatement stmt=con.prepareStatement("insert into otp values(?,?)");  
					stmt.setString(1,otp);//1 specifies the first parameter in the query 
					stmt.setString(2,mobile);
					  
					int i=stmt.executeUpdate();  
					System.out.println(i+" records inserted");  
					  
					con.close();  
		  }
		 catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
	}
		session.close();
		return userFound;              
}
}