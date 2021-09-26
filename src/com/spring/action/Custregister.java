/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.spring.action;

//import com.mail.Emailer;

import com.bean.Customer;
import com.ret.dbconnection.Dbconection;
import com.ret.dbconnection.HibernateUtil;
import com.spring.Student;

import java.sql.*;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author Owner
 */
@Controller
public class Custregister {

	@RequestMapping(value = "/registerPage")
	public ModelAndView loginPage() {

		// m.addAttribute("cust", new Customer());
		ModelAndView model = new ModelAndView("customer/RegCust");

		Customer cust = new Customer();

		model.addObject("cust", cust);

		return model;

		// return "cust_login";
	}

	// Customer cust=new Customer();

	// Emailer a=new Emailer();
	@RequestMapping(value = "/register")
	public String execute(@ModelAttribute("cust") Customer cust) {
		Connection con = Dbconection.getConnection();
		// Connection con = null;
		try {
			System.out.println("1");
//			con = Dbconection.getConnection();
			SessionFactory sessFact = HibernateUtil.getSessionFactory();
			Session session = sessFact.getCurrentSession();
			Transaction tr = session.beginTransaction();	
			session.save(cust);
			tr.commit();
			System.out.println("Successfully inserted");
			sessFact.close();
//			String insertTableSQL = "INSERT INTO r_cust(cust_name,cust_email,cust_phoneNo,cust_pass,prof_createdon,roll) VALUES(?,?,?,MD5(?),curdate(),1)";
//			PreparedStatement stmt = con.prepareStatement(insertTableSQL);
//
//			System.out.println("3");
//			System.out.println(cust.getName());
//			stmt.setString(1, cust.getName());
//			stmt.setString(2, cust.getEmailId());
//			System.out.println(cust.getEmailId());
//			stmt.setString(3, cust.getPhoneNo());
//			System.out.println(cust.getPhoneNo());
//			stmt.setString(4, cust.getPassword());
//			System.out.println(cust.getPassword());
//			stmt.executeUpdate();
//			System.out.println("4");

			return "customer/cust_login";
		} catch (Exception e) {
			return "error";

		}
	}

}
