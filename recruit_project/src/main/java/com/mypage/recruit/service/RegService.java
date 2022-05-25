package com.mypage.recruit.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.mypage.recruit.dao.IDao;
import com.mypage.recruit.dto.InfoDto;

@Service
public class RegService implements RecruitService{
	
	
	@Autowired
	private IDao idao;
	
	@Override
	public void execute(HttpServletRequest request, Model model) {
		
		String cName = request.getParameter("cname");
		String rLink = request.getParameter("rlink");
		String rDate = request.getParameter("rdate");
		String endDate = request.getParameter("enddate");
		String interview = request.getParameter("interview");
		String rCurrent = null;
		
		switch(interview) {
		
			case "codingtest" :
				rCurrent = "코딩테스트";
				break;
			
			case "1st" : 
				rCurrent = "1차 대기중";
				break;
			
			case "2nd" : 
				rCurrent = "2차 대기중";
				break;
			
			case "fuck" :
				rCurrent = "불합격";
				break;
				
			case "final" : 
				rCurrent = "합격";
				break;
				
			default :
				rCurrent = "서류 대기중";
				break;
				
		}
		
		
		InfoDto dto = new InfoDto(0, cName, endDate, rDate, rCurrent, rLink, interview);
		
		int result = idao.insertInfo(dto);
		
		
		
	}

}
