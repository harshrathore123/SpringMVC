package springmvc.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	@RequestMapping("/")
	public String home(Model model) {
		System.out.println("This is home url");
		model.addAttribute("name", "Harsh Rathore");
		model.addAttribute("Id", 1001);
		model.addAttribute("age", 24);

		return "index";
	}

	@RequestMapping("/about")
	public String about(Model model) {
		System.out.println("This is about url");
		model.addAttribute("comp_name", "American Chase");
		model.addAttribute("salary", 320000);
		
		ArrayList<Integer> list = new ArrayList<>();
		list.add(12);
		list.add(21212);
		list.add(32323);
		
		model.addAttribute("mark", list);
		
		return "about";
	}

	@RequestMapping("/service")
	public String service(Model model) {
		System.out.println("This is service url");
		List<String> list = new ArrayList<>();
		list.add("Java");
		list.add("Python");

		model.addAttribute("f", list);
		return "service";
	}

	@RequestMapping("/help")
	public String help() {
		System.out.println("This is help url");
		return "help";
	}
	
//	Creating ModelAndView Example
	@RequestMapping("/modelandview")
	public ModelAndView modelview() {
		// Creating Object of ModelAndView
		ModelAndView modelAndview = new ModelAndView();
		
		// Adding Object
		modelAndview.addObject("name", "Harsh Rathore");
		modelAndview.addObject("age", 23);
		
		// Set modelandview View Page Name
		modelAndview.setViewName("modelandview");
		
		return modelAndview;
	}
}
