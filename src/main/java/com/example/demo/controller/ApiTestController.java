package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

@Controller
public class ApiTestController {
	@RequestMapping("/usr/home/APITest")
	public String showAPITest() {
		return "/usr/home/APITest";
	}
}