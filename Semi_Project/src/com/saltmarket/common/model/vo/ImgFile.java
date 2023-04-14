package com.saltmarket.common.model.vo;

import java.sql.Date;

public class ImgFile {
	private int fileNo;	//	FILE_NO	NUMBER
	private String changeFileName;//	CHANGE_FILE_NAME	VARCHAR2(100 BYTE)
	private Date createdAt;			//	CREATED_AT	DATE
	private String deleteStatus;	//	DELETE_STATUS	CHAR(1 BYTE)
	private String fileLevel;		//	FILE_LEVEL	CHAR(1 BYTE)
	private int productNo;			//	PRODUCT_NO	NUMBER
	private int freeBoardNo;		//	FREE_BOARD_NO	NUMBER
	private int shareBoardNo;		//	SHARE_BOARD_NO	NUMBER
	
	public ImgFile() {}

	public ImgFile(int fileNo, String changeFileName, Date createdAt, String deleteStatus, String fileLevel,
			int productNo, int freeBoardNo, int shareBoardNo) {
		super();
		this.fileNo = fileNo;
		this.changeFileName = changeFileName;
		this.createdAt = createdAt;
		this.deleteStatus = deleteStatus;
		this.fileLevel = fileLevel;
		this.productNo = productNo;
		this.freeBoardNo = freeBoardNo;
		this.shareBoardNo = shareBoardNo;
	}

	public int getFileNo() {
		return fileNo;
	}

	public void setFileNo(int fileNo) {
		this.fileNo = fileNo;
	}

	public String getChangeFileName() {
		return changeFileName;
	}

	public void setChangeFileName(String changeFileName) {
		this.changeFileName = changeFileName;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public String getDeleteStatus() {
		return deleteStatus;
	}

	public void setDeleteStatus(String deleteStatus) {
		this.deleteStatus = deleteStatus;
	}

	public String getFileLevel() {
		return fileLevel;
	}

	public void setFileLevel(String fileLevel) {
		this.fileLevel = fileLevel;
	}

	public int getProductNo() {
		return productNo;
	}

	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}

	public int getFreeBoardNo() {
		return freeBoardNo;
	}

	public void setFreeBoardNo(int freeBoardNo) {
		this.freeBoardNo = freeBoardNo;
	}

	public int getShareBoardNo() {
		return shareBoardNo;
	}

	public void setShareBoardNo(int shareBoardNo) {
		this.shareBoardNo = shareBoardNo;
	}

	@Override
	public String toString() {
		return "ImgFile [fileNo=" + fileNo + ", changeFileName=" + changeFileName + ", createdAt=" + createdAt
				+ ", deleteStatus=" + deleteStatus + ", fileLevel=" + fileLevel + ", productNo=" + productNo
				+ ", freeBoardNo=" + freeBoardNo + ", shareBoardNo=" + shareBoardNo + "]";
	}
	
}
