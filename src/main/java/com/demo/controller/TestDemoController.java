package com.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

@RestController
@Api(value = "test",tags = {"test"})
public class TestDemoController {
	@GetMapping
	@ApiOperation(value = "test",notes="swagger")
	public String test() {
		return "test ok";
	}
}
