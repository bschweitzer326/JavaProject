package com.bdky.beerfinder.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bdky.beerfinder.models.User;
import com.bdky.beerfinder.services.UserService;
import com.bdky.beerfinder.validators.UserValidator;

@Controller
public class MainController {
	  private final UserService userService;
	  private final UserValidator userValidator;
	    
	    public MainController(UserService userService, UserValidator userValidator) {
	        this.userService = userService;
	        this.userValidator = userValidator;
	    }
	
//=================================
//		register page
//=================================
	
	@RequestMapping("/register")
	public String register(Model model) {
		model.addAttribute("user", new User());
		return "registration.jsp";
	}
	
	@RequestMapping(value="/registration", method=RequestMethod.POST)
	public String reg(@Valid @ModelAttribute("user") User user, BindingResult result, HttpSession session) {
		userValidator.validate(user, result);
		if(userService.findByEmail(user.getEmail()) != null) {
			result.rejectValue("email", "Unique", "Email already in use!");
		}
		
		if(result.hasErrors()) {
			return "registration.jsp";
		} else {
			User a = userService.registerUser(user);
			session.setAttribute("userId", a.getId());
			return "redirect:/home";
		}
	}
	
//=================================
//	login page
//=================================
	
	@RequestMapping("/login")
	public String login() {
		return "login.jsp";
	}
	
	   @RequestMapping(value="/login", method=RequestMethod.POST)
	    public String log(@RequestParam("email") String email, @RequestParam("password") String password, Model model, HttpSession session, RedirectAttributes redirectAttributes) {
	        if(userService.authenticateUser(email, password)) {
	        	User a = userService.findByEmail(email);
	        	session.setAttribute("userId", a.getId());
	        	redirectAttributes.addFlashAttribute("success", "Successfully logged in!");
	        	return "redirect:/home";
	        } else {
	        	redirectAttributes.addFlashAttribute("logerr", "Invalid Credentials!");
	        	return "redirect:/login";
	        }
		   
	    }
	   

//=================================
//		home page
//=================================	
	    
	@RequestMapping("/home")
	public String home(Model model, HttpSession session, RedirectAttributes redirect) {
		Long userId = (Long) session.getAttribute("userId");
		if(userId == null) {
			redirect.addFlashAttribute("please", "Please Register or Login!");
			return "redirect:/register";
		}
		model.addAttribute("user", userService.findUserById(userId));
		return "home.jsp";
	}
	
//=================================
//		Profile 
//=================================	
	
	@RequestMapping("/profile")
	public String profile() {
		return "profile.jsp";
	}
	
	
//=================================
//		logout 
//=================================	
		
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login";
	}
	
	
}
