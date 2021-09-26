package com.spring.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Order {

	
	  @RequestMapping(value="/checkoutPage")
	    public ModelAndView checkoutPage()
	    {
		  ModelAndView model= new ModelAndView("customer/checkOutform");
		  return model;
		  
	    }
}
