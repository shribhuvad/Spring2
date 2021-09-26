package com.spring.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Customer;

@Controller
public class Checkout 
{
    @RequestMapping(value="/checkout")
    public ModelAndView checkoutPage()
    {

    //	m.addAttribute("cust", new Customer());
    	ModelAndView model = new ModelAndView("customer/checkOutform");
    
//    	Customer cust = new Customer();
//   
//    	        model.addObject("cust", cust);

    	        return model;

   // 	return "cust_login";
    }

}
