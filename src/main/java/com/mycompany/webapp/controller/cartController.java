package com.mycompany.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/index")
public class cartController {

	@GetMapping("/pay")
	public String pay() {
		return "/index/pay";
	}
	
	@GetMapping("/cart")
	public String cart() {
		return "/index/cart";
	}
	
}
