package com.mypage.recruit.dto;

public class InfoDto {
	
	private int idnum;
	private String cname;
	private String endDate;
	private String rdate;
	private String rCurrent;
	private String rLink;
	private String interview;
	private String rPosition;
	private String rLocation;
	private String pay;
	private String rDesc;
	
	public InfoDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	public InfoDto(int idnum, String cname, String endDate, String rdate, String rCurrent, String rLink,
			String interview, String rPosition, String rLocation, String pay, String rDesc) {
		super();
		this.idnum = idnum;
		this.cname = cname;
		this.endDate = endDate;
		this.rdate = rdate;
		this.rCurrent = rCurrent;
		this.rLink = rLink;
		this.interview = interview;
		this.rPosition = rPosition;
		this.rLocation = rLocation;
		this.pay = pay;
		this.rDesc = rDesc;
	}

	public String getrDesc() {
		return rDesc;
	}

	public void setrDesc(String rDesc) {
		this.rDesc = rDesc;
	}

	public String getrPosition() {
		return rPosition;
	}

	public void setrPosition(String rPosition) {
		this.rPosition = rPosition;
	}

	public String getrLocation() {
		return rLocation;
	}

	public void setrLocation(String rLocation) {
		this.rLocation = rLocation;
	}

	public String getPay() {
		return pay;
	}

	public void setPay(String pay) {
		this.pay = pay;
	}

	public int getIdnum() {
		return idnum;
	}
	public void setIdnum(int idnum) {
		this.idnum = idnum;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
	public String getrCurrent() {
		return rCurrent;
	}
	public void setrCurrent(String rCurrent) {
		this.rCurrent = rCurrent;
	}
	public String getrLink() {
		return rLink;
	}
	public void setrLink(String rLink) {
		this.rLink = rLink;
	}
	public String getInterview() {
		return interview;
	}
	public void setInterview(String interview) {
		this.interview = interview;
	}

	
	
}
