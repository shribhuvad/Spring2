package com.spring.service;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import org.springframework.web.servlet.ModelAndView;
import com.bean.Product;
import com.ret.dbconnection.Dbconection;

public class DisplayAllProduct 
{
	//private  List<String> l2 = new ArrayList();
	public List<Product> execute()
	    {
	     List<Product> l3 = new ArrayList<Product>();
	    	 ModelAndView model = new ModelAndView("/home"); 
	        System.out.println("hiiiiiiiiii");
	        try
	        {
	            Connection con  = Dbconection.getConnection();
//	            String sql = "SELECT * FROM `r_prodctcatgrary`";
//	              CallableStatement stmt = con.prepareCall("{CALL `productCatagory`()}");
//	           // PreparedStatement stmt = con.prepareStatement(sql);
//	            ResultSet rs = stmt.executeQuery();
//	           
//	             while(rs.next())
//	            {
//	              l2.add(rs.getString(2));
//	            }
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
	    }
	    catch(Exception e)
	    {
	    	
	    
	    }
			return l3;
}
}
