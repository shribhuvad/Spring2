package com.spring.action;

import java.sql.Connection;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.sql.*;
import com.bean.Customer;
import com.bean.Product;
import com.ret.dbconnection.Dbconection;

@Controller
public class Detail 
{
	 Connection conn = null;
	//detail print view
	    private String id;
	      // private String id;
	
	 // private String d="1";
	 //private  List<Order> l = new ArrayList<Order>();
	     @RequestMapping(value="/detail")
	    public ModelAndView execute(@RequestParam("id") String id)
	    {//
	    	 System.out.println("id===="+id);
	        //detail print
	  
	        Product p2=new Product();
	     try{   
	       conn = Dbconection.getConnection();
	String sql = "SELECT * FROM r_product where prod_id=?";

	//String sql2 = "insert into `r_orderdetail` (`od_productName`,`od_quantity`,`od_ProductPrize`) values(?,?,?)";
	     //  System.out.println(id); 
	       PreparedStatement stmt = conn.prepareStatement(sql);
	         //PreparedStatement stmt2 = conn.prepareStatement(sql2);
	       stmt.setString(1, id);
	       ModelAndView model=new ModelAndView("product/detail");
	       ResultSet rs=stmt.executeQuery();
	     //  Product p=new Product();
	         while (rs.next())
	         {
	            p2.setName(rs.getString(2));
	            p2.setPrice(rs.getString(3));
	           p2.setDiscription( rs.getString(4));
	           p2.setImg_path(rs.getString(7));
	             p2.setDiscount(rs.getString(9));
	         }
	    
	              model.addObject("p2", p2);
	     return model;
	      } 
	     
	      catch (Exception e)
	      {
	    	   ModelAndView ret=new ModelAndView("error");
	    	   
	    	   return ret;
	      }
	    
	    }


		
}
