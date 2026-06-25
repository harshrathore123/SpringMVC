package springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import springmvc.model.User;

@Controller
public class RegistrationContoller {

//	Outside @ModelAttributex
	@ModelAttribute
	public void commonData(Model m) {
		m.addAttribute("title", "LearnCodeWith Harsh");
		m.addAttribute("Desc","Home for Programmer");
	}
	
	@RequestMapping("/register")
	public String show() {
		return "userRegistration";
	}

//	This is the part of normal @RequestParam
//	@RequestMapping("/processform")
//	public String save(@RequestParam(name="email",required=true) String usere, @RequestParam(name="name") String usern, @RequestParam(name="password") String userp,Model model) {
//		
//		System.out.println(usere + " " + usern + " " + userp);
//		
//		model.addAttribute("useremail", usere);
//		model.addAttribute("username", usern);
//		model.addAttribute("userpassword", userp);
//		return "success";
//	}

//	Now we are using easiest way
//	@RequestMapping("/processform")
//	public String userHandler(@RequestParam(name = "email") String usere, @RequestParam(name = "name") String usern,
//			@RequestParam(name = "password") String userp, Model model) {
//
//		User user = new User();
//		user.setEmail(usere);
//		user.setName(usern);
//		user.setPassword(userp);
//
//		System.out.println("User: " + user);
//
//		model.addAttribute(user);
//
//		return "success";
	
//	Now we are MODELATTRIBUTE
	@RequestMapping("/processform")
	public String userHandler(@ModelAttribute User user,Model model) {

		System.out.println("User: " + user);

		model.addAttribute(user);

		return "success";
	}
}
