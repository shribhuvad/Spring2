package com.spring.action;

import com.ret.dbconnection.Dbconection;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.bean.*;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Myaction {
	
	    private  List<String> l2 = new ArrayList();
    
	    @RequestMapping(value="/myaction") 
	    public ModelAndView execute()
	    {
	     List<Product> l3 = new ArrayList<Product>();
	    	 ModelAndView model = new ModelAndView("/home"); 
	        System.out.println("hiiiiiiiiii");
	        try
	        {
	            Connection con  = Dbconection.getConnection();
	            String sql = "SELECT * FROM `r_prodctcatgrary`";
	             // CallableStatement stmt = con.prepareCall("{CALL `productCatagory`()}");
	            PreparedStatement stmt = con.prepareStatement(sql);
	            ResultSet rs = stmt.executeQuery();
	           
	             while(rs.next())
	            {
	              l2.add(rs.getString(2));
	            }

//	        
	          PreparedStatement stmt2 = con.prepareStatement("SELECT * FROM `r_product` where status=1");
	             ResultSet rs2 = stmt2.executeQuery();
	                while (rs2.next())
	      { 
	         
	         Product p=new Product();
	         p.setId(rs2.getString(1));
	         p.setName(rs2.getString(2));
	         p.setPrice(rs2.getString(3));
	         p.setDiscription(rs2.getString(4));
	         p.setCatagory(rs2.getString(6));
	         p.setImg_path(rs2.getString(7));
	         p.setDiscount(rs2.getString(9));
	         p.setQuantity(rs2.getString(5));
	           l3.add(p);
	      
	          }
	             System.out.println(" size l3 "+l3.size());
	             
	        model.addObject("l3", l3);
	        model.addObject("l2", l2);
	        return model;
	 }
     catch(Exception e)
	 {
	       	 ModelAndView model1 = new ModelAndView("error");
	            return model1;
	        }
	        }
	}
