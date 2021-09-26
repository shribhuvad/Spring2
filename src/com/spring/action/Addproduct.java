package com.spring.action;
import com.bean.Product;
import com.ret.dbconnection.Dbconection;
import java.io.File;
import java.sql.*;

import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Owner
 */
@Controller
public class Addproduct {
	
	@RequestMapping(value="/addproductpage")
    public ModelAndView loginPage()
    {
    	ModelAndView model = new ModelAndView("admin/addnewproduct");
    
    	Product cust = new Product();
   
    	        model.addObject("cust", cust);

    	        return model;

    }

	
	
	
	

    @RequestMapping(value="/addproduct")
     public ModelAndView execute(@ModelAttribute("cust") Product cust)
    {  
    	
       // Connection con = null;
           try{ 
        	   ModelAndView model = new ModelAndView("redirect:/adminpage");
        	   System.out.println(cust.getName());
        	   System.out.println(cust.getPrice());
        	 
        	   MultipartFile file=cust.getFile();
        	   System.out.println(file.getOriginalFilename());
        	   
        	  String UPLOAD_LOCATION="C:/Projects/SpringProject/WebContent/resources/upload/";
        	   FileCopyUtils.copy(cust.getFile().getBytes(), new File(UPLOAD_LOCATION + cust.getFile().getOriginalFilename()));
               
        	   Connection con = null;
        	   con = Dbconection.getConnection();
        	   PreparedStatement stmt = null;
 String query="INSERT INTO `r_product` (`prod_name`,`prod_prize`,`prod_discr`,`prod_quantity`,`prod_catgName`,`img_path`,`discount`)"+
        	   "values(?,?,?,?,?,?,?)";
 stmt = con.prepareStatement(query);
              
               System.out.println("1");
               stmt.setString(1, cust.getName());
               System.out.println("2");
               stmt.setString(2, cust.getPrice());
               System.out.println("3");
               stmt.setString(3, cust.getDiscription());
               System.out.println("4");
               stmt.setString(4, cust.getQuantity());
               System.out.println("5");
               stmt.setString(5, "normal");
               System.out.println("6");
               stmt.setString(6, "upload/"+ file.getOriginalFilename());
               System.out.println("7");
  
               System.out.println("8");
               stmt.setString(7, cust.getDiscount());
               System.out.println(cust.getDiscount()+"9");
               
                System.out.println("10");
               stmt.executeUpdate();
               
               return model;
             
//               String fileName = multipartFile.getOriginalFilename();
//               model.addAttribute("fileName", fileName);
               
         }
         catch(Exception e)
         {
        	 ModelAndView model = new ModelAndView("error");
               return model;
            
         }
    }
    
        
     
        


  
}
