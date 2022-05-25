package com.mypage.recruit;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mypage.recruit.service.InfoService;
import com.mypage.recruit.service.ModService;
import com.mypage.recruit.service.RegService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private InfoService infoService;
	
	@Autowired
	private RegService regService;
	
	@Autowired
	private ModService modService;
	
	
	@RequestMapping("/")
	public String home(HttpServletRequest request, Model model) {
		logger.info("Welcome home! The client locale is {}.");
		
		infoService.execute(request, model);
		
		return "home";
	}
	
	@RequestMapping("reg")
	public String reg(HttpServletRequest request, Model model) {
		logger.info("Welcome home! The client locale is {}.");
		
		return "reg";
	}
	
	@RequestMapping("reg_info")
	public String regInfo(HttpServletRequest request, Model model) {
		
		regService.execute(request, model);
		
		return "redirect:/";
	}
	
	@RequestMapping("mod")
	public String mod(HttpServletRequest request, Model model) {
		logger.info("Welcome home! The client locale is {}.");
		
		modService.execute(request, model);
		
		return "mod";
	}
}
