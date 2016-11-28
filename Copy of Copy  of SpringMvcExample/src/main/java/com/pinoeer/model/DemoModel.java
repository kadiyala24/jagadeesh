package com.pinoeer.model;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pioneer.account.Account;


@Controller
public class DemoModel {

	
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String create( Model model){
		Account account=new Account();
		model.addAttribute("msg",account);
		return "register";
	}
	
	
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String openJspPage(@ModelAttribute("account") Account account,HttpServletRequest request) throws ClassNotFoundException, SQLException{
		
		
		System.out.println("details are :"   + account.toString() );
		String s1= request.getParameter("firstName");
		String s2 = request.getParameter("lastName");
		String s3=request.getParameter("dob");
		String s4=request.getParameter("password");
		String s5=request.getParameter("email");
		Class.forName("com.mysql.jdbc.Driver");
	 	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/sys","root","admin");
	 	String sql=("insert into sys.pioneer (firstName,lastName,dob,password,email) values(?,?,?,?,?)");
		PreparedStatement statement=connection.prepareStatement(sql);
			statement.setString(1,s1);
			statement.setString(2,s2);
			statement.setString(3,s3);
			statement.setString(4,s4 );
			statement.setString(5,s5 );
			statement.executeUpdate();
			//connection.close();
			System.out.println("saved values:" +account.toString());
		return "redirect:/index.jsp";
	}
	
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login( Model model){
		Account account=new Account();
		model.addAttribute("msg",account);
		return "login";
	}
	
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public void login(@ModelAttribute("loginAccount") Account account,HttpServletRequest request,HttpServletResponse response) throws ClassNotFoundException, SQLException, IOException, ServletException{
		System.out.println("login post");
		String email = request.getParameter("email");
	        String password = request.getParameter("password");
	        PrintWriter out = response.getWriter();
	        if(Validate.checkUser(email, password))
	        {
	        	
	            RequestDispatcher rs = request.getRequestDispatcher("WEB-INF/views/success.jsp");
	            rs.forward(request, response);
	        }
	        else
	        {
	        	response.setContentType("text/html");
	           out.println("Email or Password incorrect");
	           RequestDispatcher rs = request.getRequestDispatcher("WEB-INF/views/login.jsp");
	          rs.include(request, response);
	           
	        }
	}	

	@RequestMapping(value="/welcome", method=RequestMethod.GET)
	public String employeeList( Model model){
		Account account=new Account();
		model.addAttribute("msg",account);
		return "welcome";
	}
	
	@RequestMapping(value="/welcome", method=RequestMethod.POST)
	public void openList(@ModelAttribute("successList") Account account,HttpServletRequest request,HttpSession session) throws ClassNotFoundException, SQLException{
		Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/sys","root","admin");
	 	String sql=("select id,firstName,lastName,email from sys.pioneer");
		PreparedStatement statement=connection.prepareStatement(sql);
		
		ResultSet rs=statement.executeQuery();
		ArrayList<Account> list=new ArrayList<Account>();
		while(rs.next())
		{
			Account ac=new Account();
			ac.setId(rs.getInt("id"));
			ac.setFirstName(rs.getString("firstName"));
			ac.setLastName(rs.getString("lastName"));
			ac.setEmail(rs.getString("email"));
			list.add(ac);
		}
		session=request.getSession();
		session.setAttribute("arrayList", list);
		
	}
}
