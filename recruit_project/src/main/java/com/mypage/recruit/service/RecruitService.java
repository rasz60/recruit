package com.mypage.recruit.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface RecruitService {
	
	public void execute(HttpServletRequest request, Model model);
	
}
