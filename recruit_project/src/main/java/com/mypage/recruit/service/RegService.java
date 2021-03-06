package com.mypage.recruit.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.mypage.recruit.dao.IDao;
import com.mypage.recruit.dto.InfoDto;
import com.mypage.recruit.util.ParseDto;

@Service
public class RegService implements RecruitService{
	
	@Autowired
	private IDao idao;
	
	@Override
	public void execute(HttpServletRequest request, Model model) {
		
		InfoDto dto = ParseDto.Parse(request);
		
		int result = idao.insertInfo(dto);
		
		System.out.println("result : " + (result > 0 ? "true" : "false"));
		
	}

}
