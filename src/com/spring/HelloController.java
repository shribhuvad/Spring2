package com.spring;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloController {

	@RequestMapping("/hi")
	public String sayHello() {

		System.out.print("shri");
		ModelAndView model = new ModelAndView("helloPage");
		model.addObject("msg", "shri");

		// return new ModelAndView("helloPage","msg","hello spring");
		// return null;
		return "helloPage";
	}

	@RequestMapping(value = "/addmissionForm", method = RequestMethod.GET)
	public ModelAndView getAddmissionForm() {

		System.out.print("shri");
		ModelAndView model = new ModelAndView("addmissionForm");

		// return new ModelAndView("helloPage","msg","hello spring");
		return model;
		// return "addmissionForm";
	}

	@RequestMapping(value = "/submitaddmissionForm", method = RequestMethod.POST)
	public ModelAndView submitAddmissionForm(@ModelAttribute("student1") Student student1, BindingResult result,
			HttpSession session, Model model1) {

		// String name=par.get("studentName");
		// String hobby=par.get("hobby");
		// Student s1=new Student();
		// s1.setStudentName(name);
		// s1.setHobby(hobby);
		if (result.hasErrors()) {
			ModelAndView model = new ModelAndView("addmissionForm");
			model1.addAttribute("loginError", "invalid data");
			return model;

		}
		System.out.print("shri");
		if (student1.getStudentName().equals("shri") && (student1.getPassword().equals("shri"))) {
			ModelAndView model = new ModelAndView("addmissionsuccess");
			session.setAttribute("userId", student1.getStudentName());
			((Model) model).addAttribute("loginError", "invalid data");
			return model;
		} else {
			ModelAndView model = new ModelAndView("addmissionForm");
			return model;
		}
		// model.addObject("msg","detail submit by u: "+name+" "+hobby);
		// model.addObject("student1",s1);
		// return new ModelAndView("helloPage","msg","hello spring");

	}

//@RequestMapping("/login")
//public String login(HttpSession session) {
//		 
//	       System.out.print("shri");
//	       ModelAndView model=new ModelAndView("helloPage");
//	       model.addObject("msg","shri");
//	       
//	       // return new ModelAndView("helloPage","msg","hello spring");
//	    // return null;
//	        return "helloPage";
//	    }
//

	@ModelAttribute
	public void addingCommonObjects(Model model) {

		model.addAttribute("header", "top header: ");

	}

}
