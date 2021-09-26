/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.spring.action;

import com.bean.Customer;
import com.ret.dbconnection.Dbconection;
import com.ret.dbconnection.HibernateUtil;

import java.security.MessageDigest;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Owner
 */
@Controller
public class Logincust {
	Connection con = null;
	// Customer cust=new Customer();
	private String passwrd;// store dataB
	private String nameCust;
	private String email;
	int roll = 0;

	// private SessionMap<String, Object> sessionMap;
	@RequestMapping(value = "/login")
	public ModelAndView loginPage() {

		// m.addAttribute("cust", new Customer());
		ModelAndView model = new ModelAndView("customer/cust_login");

		Customer cust = new Customer();

		model.addObject("cust", cust);

		return model;

		// return "cust_login";
	}

	@RequestMapping(value = "/loginCust")
	public ModelAndView execute(@ModelAttribute("cust") Customer cust, HttpSession session) {
		System.out.print("started");
		int custId = 0;
		String ret = "error";
		ModelAndView model = new ModelAndView();
		try {
			System.out.println("      ********hiiiiiiiiii");

			SessionFactory sessFact = HibernateUtil.getSessionFactory();
			Session Hibrtnatesession = sessFact.getCurrentSession();
			Transaction tr = Hibrtnatesession.beginTransaction();
			// **creating CriteriaBuilder**
			CriteriaBuilder builder = Hibrtnatesession.getCriteriaBuilder();
			CriteriaQuery<Customer> criteria = builder.createQuery(Customer.class);
			Root<Customer> employeeRoot = criteria.from(Customer.class);
			criteria.select(employeeRoot);
			// **Adding where clause**
			criteria.where(builder.equal(employeeRoot.get("emailId"), cust.getEmailId()));
			List<Customer> employeeList = Hibrtnatesession.createQuery(criteria).getResultList();
			System.out.println("hibernate");
            System.out.println(employeeList.get(0).getPassword());
			MessageDigest md = MessageDigest.getInstance("MD5");
			md.update(cust.getPassword().getBytes());

			byte byteData[] = md.digest();
			StringBuffer sb = new StringBuffer();
			for (int i = 0; i < byteData.length; i++) {
				sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
			}
			cust.setPassword(sb.toString());
            System.out.println(cust.getPassword());
			if ((employeeList.get(0).getPassword()).equals(cust.getPassword())) {
				if (roll == 2) {

					session.setAttribute("Adminname", employeeList.get(0).getName());
					session.setAttribute("Adminemail", employeeList.get(0).getEmailId());
					model.setViewName("redirect:/adminpage");
					// ModelAndView model2 = new
					// ModelAndView("redirect:/adminpage");
					return model;
				} else {
					session.setAttribute("name", employeeList.get(0).getName());
					session.setAttribute("email", employeeList.get(0).getEmailId());
					model.setViewName("redirect:/myaction");
					return model;
				}
			} else {
				// addActionMessage("invalid username or password");
				//model.setViewName("error");
				return model;
			}
		} catch (Exception e) {
			model.setViewName("error" + e.toString());
			return model;
		}
	}

}
