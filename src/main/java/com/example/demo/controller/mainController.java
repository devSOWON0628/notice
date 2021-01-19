package com.example.demo.controller;

import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;


//홈화면 
@RestController
public class mainController {
		
	@GetMapping("")
	public ModelAndView main(HttpServletRequest req) {
		ModelAndView mv = new ModelAndView("write");
		return mv;
	}
	
	@GetMapping("/home")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView("main");
		return mv;
	}
	
	@GetMapping("/read")
	public ModelAndView postDetail(@RequestParam("num")String num) {
		ModelAndView mv = new ModelAndView("postDetail");
		mv.addObject("num",num);
		return mv;
	}
	
	@GetMapping("/check")
	public ModelAndView check() {
		ModelAndView mv = new ModelAndView("check");
		return mv;
	}
	
	
}
