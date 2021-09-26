/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.spring.action;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Owner
 */
@Controller
public class Logout  
{
	@RequestMapping(value="/logout") 
    public ModelAndView execute(HttpSession session)
    {
		ModelAndView model = new ModelAndView("redirect:/myaction"); 
      //  if(session!=null)
        {
        	session.invalidate();  
           
        }
       return model;
    }
}
