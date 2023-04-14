package com.saltmarket.freeboard.model.vo;

import java.sql.Date;

public class Freeboard {
	
	private int freeboardNo;				//	FREE_BOARD_NO	NUMBER
	private String userName;						//	USER_NO	NUMBER
	private String boardTitle;			//	BOARD_TITLE	VARCHAR2(100 BYTE)
	private String boardContent;		//	BOARD_CONTENT	VARCHAR2(2000 BYTE)
	private Date createdDate;			//	CREATED_DATE	DATE
	private int boardViews;				//	BOARD_VIEWS	NUMBER
	private String deleteStatus;		//	DELETE_STATUS	CHAR(1 BYTE)
	private String category;				//	CATEGORY	VARCHAR2(100 BYTE)
	
	public Freeboard() {}

	public Freeboard(int freeboardNo, String userNo, String boardTitle, String boardContent, Date createdDate,
			int boardViews, String deleteStatus, String category) {
		super();
		this.freeboardNo = freeboardNo;
		this.userName = userNo;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.createdDate = createdDate;
		this.boardViews = boardViews;
		this.deleteStatus = deleteStatus;
		this.category = category;
	}
	
	// 목록 조회용 생성자
	public Freeboard(int freeboardNo, String userName, String boardTitle, Date createdDate, int boardViews,
			String category) {
		super();
		this.freeboardNo = freeboardNo;
		this.userName = userName;
		this.boardTitle = boardTitle;
		this.createdDate = createdDate;
		this.boardViews = boardViews;
		this.category = category;
	}

	public int getFreeboardNo() {
		return freeboardNo;
	}

	public void setFreeboardNo(int freeboardNo) {
		this.freeboardNo = freeboardNo;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userNo) {
		this.userName = userNo;
	}

	public String getBoardTitle() {
		return boardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	public String getBoardContent() {
		return boardContent;
	}

	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	public int getBoardViews() {
		return boardViews;
	}

	public void setBoardViews(int boardViews) {
		this.boardViews = boardViews;
	}

	public String getDeleteStatus() {
		return deleteStatus;
	}

	public void setDeleteStatus(String deleteStatus) {
		this.deleteStatus = deleteStatus;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	@Override
	public String toString() {
		return "Freeboard [freeboardNo=" + freeboardNo + ", userNo=" + userName + ", boardTitle=" + boardTitle
				+ ", boardContent=" + boardContent + ", createdDate=" + createdDate + ", boardViews=" + boardViews
				+ ", deleteStatus=" + deleteStatus + ", category=" + category + "]";
	}
	
	

}
