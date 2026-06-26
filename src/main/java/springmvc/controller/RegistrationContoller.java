package springmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import springmvc.model.User;
import springmvc.service.UserService;

@Controller
public class RegistrationContoller {
	
	@Autowired
	private UserService userService;
	
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

//	Now we are MODELATTRIBUTE
	@RequestMapping("/processform")
	public String userHandler(@ModelAttribute User user,Model model) {

		System.out.println("User: " + user);

		model.addAttribute(user);
		int createduser = this.userService.createUser(user);
		model.addAttribute("msg", "Data is saved for : "+createduser);
		return "success";
	}
	
	@RequestMapping("/showUser")
	public String showUser() {
		return "showUser";
	}
	
	@RequestMapping("/showUserData")
	public String showUserData(@RequestParam("id") int userId, Model m1) {
		
		System.out.println("ID : "+userId);
		
		User user = this.userService.showUser(userId);
		System.out.println("User :"+user);
		
		if(user == null) {
			m1.addAttribute("msg", "User not Found");
		}
		else {
			m1.addAttribute("showuser", user);
		}
		
		return "userDetail";
	}
}
