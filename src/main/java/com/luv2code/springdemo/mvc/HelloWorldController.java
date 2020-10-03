package com.luv2code.springdemo.mvc;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class HelloWorldController {

	private static final Logger logger = LogManager.getLogger(HelloWorldController.class);

	// need a controller method to show the initial HTML form
	
	@RequestMapping("/showForm")
	public String showForm() {
		logger.debug("=".repeat(30) + "showForm");
		return "helloworld-form";
	}
		
	// need a controller method to process the HTML form
	
	@RequestMapping("/processForm")
	public String processForm() {
		logger.debug("=".repeat(30) + "processForm");
		return "helloworld";
	}

	@RequestMapping("/processFormVersionTwo")
	public String processFormVersionTwo(HttpServletRequest request, Model model) {
		logger.debug("=".repeat(30) + "processFormVersionTwo");
		String name = request.getParameter("studentName");
		name = name.toUpperCase();
		String message = "Yo! " + name;
		model.addAttribute("message", message);
		return "helloworld";
	}
}






