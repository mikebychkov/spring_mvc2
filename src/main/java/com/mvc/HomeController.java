package com.mvc;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	private static final Logger logger = LogManager.getLogger(HomeController.class);

	@RequestMapping("/")
	public String showPage() {
		logger.debug("=".repeat(30) + "showPage");
		return "main-menu";
	}
}
