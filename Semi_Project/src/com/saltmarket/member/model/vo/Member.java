package com.saltmarket.member.model.vo;

import java.sql.Date;

public class Member {
	
	private int userNo;          //	USER_NO	NUMBER
	private String userPwd;      //	USER_PWD	VARCHAR2(20 BYTE)
	private String userName;     //	USER_NAME	VARCHAR2(20 BYTE)
	private Date birth;          //	BIRTH	DATE
	private String phone;        //	PHONE	CHAR(11 BYTE)
	private String email;        //	EMAIL	VARCHAR2(45 BYTE)
	private String userId;       //	USER_ID	VARCHAR2(20 BYTE)
	private Date enrollDate;     //	ENROLL_DATE	DATE
	private String status;       //	STATUS	CHAR(1 BYTE)
	private int saltyScore;      //	SALTY_SCORE	NUMBER
	private int gradeNo;         //	GRADE_NO	NUMBER
	private int regionNo;        //	REGION_NO	NUMBER
	
	public Member() { }

	public Member(int userNo, String userPwd, String userName, Date birth, String phone, String email, String userId,
			Date enrollDate, String status, int saltyScore, int gradeNo, int regionNo) {
		super();
		this.userNo = userNo;
		this.userPwd = userPwd;
		this.userName = userName;
		this.birth = birth;
		this.phone = phone;
		this.email = email;
		this.userId = userId;
		this.enrollDate = enrollDate;
		this.status = status;
		this.saltyScore = saltyScore;
		this.gradeNo = gradeNo;
		this.regionNo = regionNo;
	}
	
	

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getSaltyScore() {
		return saltyScore;
	}

	public void setSaltyScore(int saltyScore) {
		this.saltyScore = saltyScore;
	}

	public int getGradeNo() {
		return gradeNo;
	}

	public void setGradeNo(int gradeNo) {
		this.gradeNo = gradeNo;
	}

	public int getRegionNo() {
		return regionNo;
	}

	public void setRegionNo(int regionNo) {
		this.regionNo = regionNo;
	}

	@Override
	public String toString() {
		return "Member [userNo=" + userNo + ", userPwd=" + userPwd + ", userName=" + userName + ", birth=" + birth
				+ ", phone=" + phone + ", email=" + email + ", userId=" + userId + ", enrollDate=" + enrollDate
				+ ", status=" + status + ", saltyScore=" + saltyScore + ", gradeNo=" + gradeNo + ", regionNo="
				+ regionNo + "]";
	}

}
