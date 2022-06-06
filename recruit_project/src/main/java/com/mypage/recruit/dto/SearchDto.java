package com.mypage.recruit.dto;

public class SearchDto {
	
	private String key;
	private String val1;
	private String val2;
	
	public SearchDto() {
		super();
	}
	
	public SearchDto(String key, String val1, String val2) {
		super();
		this.key = key;
		this.val1 = val1;
		this.val2 = val2;
	}
	
	public String getKey() {
		return key;
	}
	
	public void setKey(String key) {
		this.key = key;
	}
	
	public String getVal1() {
		return val1;
	}
	
	public void setVal1(String val1) {
		this.val1 = val1;
	}
	
	public String getVal2() {
		return val2;
	}
	
	public void setVal2(String val2) {
		this.val2 = val2;
	}
	
}
