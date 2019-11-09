package com.cicd.cicdspringbootjava;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class CicdSpringBootJavaApplication {

	@GetMapping("/")
	public String hello() {
		return "Hello world from DZone";
	}

	public static void main(String[] args) {
		SpringApplication.run(CicdSpringBootJavaApplication.class, args);
	}

}
