package com.mypage.recruit.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mypage.recruit.dto.InfoDto;

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
	public InfoDto search(String cname) {
		
		System.out.println(cname);
		
		InfoDto dto = sqlSession.selectOne("search", cname);
		
		
		return dto;
	}
	
	
	
}
