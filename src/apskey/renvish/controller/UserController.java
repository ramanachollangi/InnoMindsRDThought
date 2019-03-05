package apskey.renvish.controller;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import apskey.renvish.pojo.Dairy;
import apskey.renvish.pojo.Login;
import apskey.renvish.pojo.SaveUser;
import apskey.renvish.pojo.ShowUsers;
import apskey.renvish.pojo.User;
import apskey.renvish.service.LoginService;
import apskey.renvish.service.SaveUserService;
import apskey.renvish.service.ShowUserAps;
import apskey.renvish.service.UserService;
@Controller
public class UserController {
	@Autowired
	private UserService userService;
	@Autowired
	private SaveUserService userSave;
	@Autowired
	private LoginService loginService;
	@Autowired
	private ShowUserAps showUser;
	 @Autowired
	    private JavaMailSender mailSender;
	private Object userList1;

	@RequestMapping("/home.htm")
	public ModelAndView homePage(HttpServletRequest request){
		
		return new ModelAndView("Home");
	}
	
	
	@RequestMapping("/Loginsucess")
	public ModelAndView loginsucess(HttpServletRequest request){
		return new ModelAndView("Loginsucess");
	}
	@RequestMapping("/Login")
	public ModelAndView login(Map<String, Object> model,HttpServletRequest request){
		 Login user = new Login();
	        model.put("login", user);
		return new ModelAndView("Login");
	}
	@RequestMapping("/Registration")
	public ModelAndView registration(HttpServletRequest request){
		
		return new ModelAndView("Registration");
	}
	@RequestMapping("/Government")
	public ModelAndView government(HttpServletRequest request){
		
		return new ModelAndView("Government");
	}
	@RequestMapping("/JobSites")
	public ModelAndView jobsites(HttpServletRequest request){
		
		return new ModelAndView("JobSites");
	}
	@RequestMapping("/OnlineGameSites")
	public ModelAndView gamesites(HttpServletRequest request){
		
		return new ModelAndView("OnlineGameSites");
	}
	@RequestMapping("/Aboutus")
	public ModelAndView about(HttpServletRequest request){
		
		return new ModelAndView("Aboutus");
	}
	@RequestMapping("/ShopingSites")
	public ModelAndView shopingsites(HttpServletRequest request){
		
		return new ModelAndView("ShopingSites");
	}
	@RequestMapping("/TicketsBooking")
	public ModelAndView ticketsBooking(HttpServletRequest request){
		
		return new ModelAndView("TicketsBooking");
	}
	@RequestMapping("/Wallets")
	public ModelAndView wallets(HttpServletRequest request){
		
		return new ModelAndView("Wallets");
	}
	@RequestMapping("/Banking")
	public ModelAndView banking(HttpServletRequest request){
		
		return new ModelAndView("Banking");
	}
	@RequestMapping("/Services")
	public ModelAndView Service(HttpServletRequest request){
		return new ModelAndView("Services");
	}
	
	@RequestMapping("/Contactus")
	public ModelAndView contact(HttpServletRequest request){
		
		return new ModelAndView("Contactus");
	}
	
	@RequestMapping("/Dailydairy")
	public ModelAndView dairy(HttpServletRequest request){
		
		return new ModelAndView("Dailydairy");
	}
	
	@RequestMapping("/response")
	public ModelAndView response(){
		
		return new ModelAndView("response");
	}
	@RequestMapping("/res")
	public ModelAndView res(){
		
		return new ModelAndView("res");
	}
	@RequestMapping("/show")
	public ModelAndView show(){
		
		return new ModelAndView("show");
	}
	@RequestMapping("/dairyres")
	public ModelAndView dairy(){
		
		return new ModelAndView("dairyres");
	}
	@RequestMapping("/contactres")
	public ModelAndView contact(){
		
		return new ModelAndView("contactres");
	}
	
	@RequestMapping(value="/dairy",method = RequestMethod.POST)
	public String insert(@ModelAttribute("dairy")Dairy dairy){
		userService.saveUser(dairy);
		System.out.println("hello");
		
		
		return "redirect:dairyres";
	}
	
	  @RequestMapping(value="contacts",method = RequestMethod.POST)
	    public String doSendEmail(HttpServletRequest request) {
	        String recipientAddress = request.getParameter("email");
	        String mobile=request.getParameter("mobile");
	        String name=request.getParameter("name");
	        String message = request.getParameter("message");
	        System.out.println("To: " + recipientAddress);
	        System.out.println("Message: " + message);
	        SimpleMailMessage email = new SimpleMailMessage();
	        email.setTo("appskey123@gmail.com");
	        email.setFrom(name);     
	        email.setText(message.concat(name+" "+recipientAddress));
	        mailSender.send(email);
	        return "contactres";
	    }
	  
	  @RequestMapping(value="/insert",method = RequestMethod.POST)
		public String insert(@ModelAttribute("user")User user)
		{
			userService.saveUser(user);
			System.out.println("hello");
			return "redirect:Login";
		}
	  
	@RequestMapping(value="/save",method = RequestMethod.POST)
	public String save(@Valid @ModelAttribute("saveform")SaveUser saveuser ,BindingResult result, Map<String, Object> model)
	{
		userSave.saveUser(saveuser);
		System.out.println("hello");
		return "redirect:res";
	}
	
	@RequestMapping(value="/login",method = RequestMethod.POST)
	public String processForm(@Valid @ModelAttribute("login") Login login, BindingResult result,Map<String, Object> model,HttpServletRequest request,HttpServletResponse response )throws ServletException, IOException {
	
		if (result.hasErrors()) {
			return "Login";
		}
		boolean userExists = loginService.checkLogin(login.getMobile(),login.getPassword());
		PrintWriter out = response.getWriter();
	
		{
			 System.out.println("session in login");
		HttpSession session=request.getSession(true);
	
		session.setAttribute("mail",login.getMobile());
		if(userExists){
			session.setAttribute("mail",login.getMobile());
			
			//session.setMaxInactiveInterval(30); // 30 seconds
			response.sendRedirect(request.getContextPath() + "/Loginsucess");
			return "loginsuccess";
		}else{
			result.rejectValue("mobile","invaliduser");
			RequestDispatcher rd = request.getRequestDispatcher("login.html");
			out.println("<font color=red>Either user name or password is wrong.</font>");
			return "loginform";
		}
		}
	}

	@RequestMapping(value="/Logout",method = RequestMethod.GET)
	public void logoutForm(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException
	{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession newsession = request.getSession(false);
	    if (newsession != null) 
	    {
	         newsession.invalidate();

	    }
		try
		{
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/apskey", "root", "");
			
			PreparedStatement stmt=con.prepareStatement("delete from otp values(?,?)");  
			int i=stmt.executeUpdate();  
			System.out.println(i+" records inserted");  
			  
			con.close();  
		}
		catch(Exception e){
			e.printStackTrace();
		}
		response.sendRedirect(request.getContextPath() + "/Login");
		response.setHeader("Cache-Control", "no-cache"); 
		response.setHeader("Pragma", "no-cache"); 
		response.setDateHeader("Expires", 0); 
		out.println("thanq you!!, Your session was destroyed successfully!!");
		// session = request.getSession(false);
		//session.setAttribute("user", null);
		//session.removeAttribute("mail");
	}

	@RequestMapping(value="/show",method=RequestMethod.POST)
	public ModelAndView show(@RequestParam("otp")String otp,@RequestParam("accoType")String accoType,@RequestParam("mobile")String mobile,SaveUser user,HttpServletRequest request,HttpServletResponse response, Object userList  )throws ServletException, IOException{
		System.out.println(otp);
		try
		{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/apskey", "root", "");
		PreparedStatement stmt=con.prepareStatement("select * from apskey.otp where otp=?");  
		stmt.setString(1,otp);//1 specifies the first parameter in the query  
		  ResultSet rs =stmt.executeQuery();  
		if(rs.next())
		{
			PrintWriter out = response.getWriter();
		List<SaveUser> userList1=showUser.showAps(user.getAccoType(),user.getMobile());
		ArrayList<ShowUsers>  al=new ArrayList<ShowUsers>();
			ShowUsers showuser=new ShowUsers(accoType,mobile);
			showuser.setMobile(user.getMobile());
			//System.out.println(showuser.getMobile());
			showuser.setAccoType(user.getAccoType());
			
			al.add(showuser);
			Iterator<ShowUsers> it= al.iterator();
			while(it.hasNext()){
				System.out.println("list:"+it.next());
			}
			
			//session.setAttribute("accoType",user.getAccoType());
			
			//userList1.add(showuser);
			
			
			System.out.println(user.getAccoType());
			System.out.println(user.getMobile());
			return new ModelAndView("show","userList",userList1);
		}
		else
			System.out.println("otp does not exist");
			con.close();
			return new ModelAndView("worng");
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		/*PrintWriter out = response.getWriter();
		HttpSession session=request.getSession(true);
		List<SaveUser> userList=showUser.showAps(user.getAccoType(),user.getUseremail());
		session.setAttribute("useremail",user.getUseremail());
		session.setAttribute("accoType",user.getAccoType());
		System.out.println(user.getAccoType());
		System.out.println(user.getUseremail());
		*/
		//return new ModelAndView("show","userList1",userList1);
		System.out.println("hii");
		return new ModelAndView("show","userList",userList1);
		

	}
	@RequestMapping(value="/dairyshow",method=RequestMethod.GET)
	public ModelAndView showDailyDairy(Dairy user,HttpServletRequest request,HttpServletResponse response, Object userList  )throws ServletException, IOException
	{
		List<Dairy> userList1=userService.showDairy(user.getMobile());
		ArrayList<Dairy>  al=new ArrayList<Dairy>();
		return new ModelAndView("dairy","userList",userList1);
	}
}
