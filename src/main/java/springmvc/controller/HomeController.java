package springmvc.controller;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping("/")
	public String home() {
		System.out.println("This is home url");
		return "index";
	}
	
	@RequestMapping("/about")
	public String about() {
		System.out.println("This is about url");
		return "about";
	}
	
	@RequestMapping("/service")
	public String service() {
		System.out.println("This is service url");
		return "service";
	}
	
	@RequestMapping("/help")
	public String help() {
		System.out.println("This is help url");
		return "help";
	}
}
