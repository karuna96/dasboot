package com.cg.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeController {

	public static final Logger logger =LogManager.getLogger(HomeController.class);
	
	@RequestMapping("/")
	public String home() {
		logger.info("Helloo!!");
		
		return "Hello Capgeminite!";
	}
}
