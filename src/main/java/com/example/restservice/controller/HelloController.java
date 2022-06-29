package com.example.restservice.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

	@GetMapping("/")
	public String root() {
		return "You did it!!";
	}

	@GetMapping("/hello")
	public String helo() {
		return "Hello from Spring Boot";
	}
}
