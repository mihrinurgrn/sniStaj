package com.deneme.springdemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class DenemeController {

	@RequestMapping("/showForm")
	public String displayForm()
	{
		return "deneme";
	}
}
