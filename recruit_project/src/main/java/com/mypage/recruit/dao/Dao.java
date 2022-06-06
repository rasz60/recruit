package com.mypage.recruit.dao;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mypage.recruit.dto.InfoDto;
import com.mypage.recruit.dto.SearchDto;

@Repository
public class Dao implements IDao {

	private static final Logger logger = LoggerFactory.getLogger(Dao.class);

	@Autowired
	private SqlSession sqlSession;
	
	
	@Override
	public ArrayList<InfoDto> getInfo() {
		
		ArrayList<InfoDto> result = (ArrayList)sqlSession.selectList("selectAll");
		
		return result;
	}


	@Override
	public int insertInfo(InfoDto dto) {
		
		int result = sqlSession.insert("insertInfo", dto);
		
		return result;
	}


	@Override
	public InfoDto getOneInfo(int idnum) {
		
		InfoDto dto = sqlSession.selectOne("selectOne", idnum);
		
		return dto;
	}


	@Override
	public int modInfo(InfoDto dto) {
		
		int result = sqlSession.update("modInfo", dto);
		
		
		return result;
	}


	@Override
	public int delInfo(int idnum) {
		
		int result = sqlSession.delete("delInfo", idnum);
		
		return result;
	}


	@Override
	public ArrayList<InfoDto> search(HttpServletRequest request) {
		
		String key = request.getParameter("key");
		String val1 = request.getParameter("val1");
		String val2 = request.getParameter("val2");
		
		SearchDto dto = new SearchDto(key, val1, val2);
		
		ArrayList<InfoDto> dtos = new ArrayList<>();
		
		switch(key) {
			case "rdate" :
				dtos = (ArrayList)sqlSession.selectList("searchDate", dto);
				break;
			
			case "pay" :
				dtos = (ArrayList)sqlSession.selectList("searchPay", dto);
				break;
			
			default :
				dtos = (ArrayList)sqlSession.selectList("search", dto);
				break;
				
		}
		
		System.out.println(dtos.size());
		return dtos;
	}
	
	
	
}
