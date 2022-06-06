package com.mypage.recruit.dao;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.mypage.recruit.dto.InfoDto;

public interface IDao {
	
	public ArrayList<InfoDto> getInfo();
	
	public int insertInfo(InfoDto dto);
	
	public InfoDto getOneInfo(int idnum);

	public int modInfo(InfoDto dto);
	
	public int delInfo(int idnum);
	
	public ArrayList<InfoDto> search(HttpServletRequest request);
	
}
