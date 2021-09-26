package com.spring.action;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Product;
import com.ret.dbconnection.Dbconection;
import com.spring.service.DisplayAllProduct;

@Controller
public class AdminAction 
{
   @RequestMapping(value="/remove")
   public ModelAndView remove(@RequestParam("id") String id)
   {//
	   ModelAndView model=new ModelAndView();
	   model.setViewName("redirect:/adminpage");
       try
    {
      Connection con  = Dbconection.getConnection();
      //String sql = "delete from `r_product` where `prod_id`=?";
      PreparedStatement stmt = con.prepareStatement("delete from r_product where prod_id=?");
      stmt.setString(1, id);
      stmt.executeUpdate();
      return model;
   }
   catch(Exception e)
   {
        	  ModelAndView model2=new ModelAndView("error");
              return model2;
     }
}
   
   @RequestMapping(value="/adminpage")
   public ModelAndView adminPage()
   { 
	   ModelAndView model = new ModelAndView("/admin/removeProduct"); 
	   List<Product> l3 = new ArrayList<Product>();
	   DisplayAllProduct obj=new DisplayAllProduct();
	   l3=obj.execute();
	   model.addObject("l3", l3);
	   return model;
	   
	   
   }
	
}
