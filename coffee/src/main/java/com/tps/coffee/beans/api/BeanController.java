package com.tps.coffee.beans.api;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping("/beans")
@RestController
public class BeanController {

	@GetMapping("")
	public ResponseEntity<String> sayHello() {
		return ResponseEntity.ok("Hello");
	}
}
