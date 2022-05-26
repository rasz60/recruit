package com.mypage.recruit.util;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;

import com.mypage.recruit.dto.InfoDto;

@Component
public class ParseDto {

	public static InfoDto Parse(HttpServletRequest request) {
		
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
		
		String rPosition = request.getParameter("rPosition");
		String rLocation = request.getParameter("rLocation");
		String pay = request.getParameter("pay");
		
		String chk1 = request.getParameter("chk1");
		String chk2 = request.getParameter("chk2");
		String chk3 = request.getParameter("chk3");
		
		String rDesc = "서류 접수 ";
		
		if ( chk1 != null ) {
			rDesc += "> 코딩 테스트 ";
		}
		
		if ( chk2 != null ) {
			rDesc += "> 1차 면접 ";
		}
		
		if ( chk3 != null ) {
			rDesc += "> 2차 면접";
		}
		
		InfoDto dto = new InfoDto(0, cName, endDate, rDate, rCurrent, rLink, interview, rPosition, rLocation, pay, rDesc);
		
		
		return dto;
	}
	
}
