package com.mypage.recruit.dao;

import java.util.ArrayList;

import com.mypage.recruit.dto.InfoDto;

public interface IDao {
	
	public ArrayList<InfoDto> getInfo();
	
	public int insertInfo(InfoDto dto);
	
	public InfoDto getOneInfo(int idnum);
	
}