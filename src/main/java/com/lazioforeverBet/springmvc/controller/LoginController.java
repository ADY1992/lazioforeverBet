package com.lazioforeverBet.springmvc.controller;


import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.lazioforeverBet.springmvc.dao.LoginDao;
import com.lazioforeverBet.springmvc.form.LoginForm;



@Controller
public class LoginController {
	
	@Autowired
	public LoginDao loginDao;
	
	@RequestMapping(value="/login" , method = RequestMethod.GET)
	public ModelAndView login(){
		LoginForm loginform = new LoginForm();
		ModelAndView view = new ModelAndView("login");
		view.addObject("loginform", loginform);
		return view;
	}

	
	 @RequestMapping(value={"/home"}, method = RequestMethod.POST)
	 public String processlogin(@Valid @ModelAttribute("loginform") LoginForm loginform, BindingResult result, 
	            Map<String, Object> model) {
	
		if (result.hasErrors()) {
			return "login";
		}
		 
		boolean userExists = loginDao.checkLogin(loginform.getUserName(), loginform.getPassword());
		 
		if(userExists){
			model.put("loginform", loginform);
			return "home";
		}else{
			result.rejectValue("userName","invaliduser");
			return "login";
		}
	 }
	 
}
