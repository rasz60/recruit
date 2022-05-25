package com.mypage.recruit.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.mypage.recruit.dao.IDao;

@Service
public class InfoService implements RecruitService{

	@Autowired
	private IDao idao;
	
	@Override
	public void execute(HttpServletRequest request, Model model) {
		
		model.addAttribute("list", idao.getInfo());
		
	}

}
