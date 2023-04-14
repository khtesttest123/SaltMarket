package com.saltmarket.product.model.vo;

import java.sql.Date;

public class Product {
	private int productNo;		//	PRODUCT_NO	NUMBER
	private String productName;	//	PRODUCT_NAME	VARCHAR2(100 BYTE)
	private String productStatus;//	PRODUCT_STATUS	CHAR(1 BYTE)
	private int price;			//	PRICE	NUMBER
	private Date createdAt;		//	CREATED_AT	DATE
	private String delteStatus;	//	DELETE_STATUS	CHAR(1 BYTE)
	private String description;	//	DESCRIPTION	VARCHAR2(1000 BYTE)
	private int categoryNo;		//	CATEGORY_NO	NUMBER
	private int userNo;			//	USER_NO	NUMBER
	private int regionNo;		//	REGION_NO	NUMBER
	
	public Product() {}

	public Product(int productNo, String productName, String productStatus, int price, Date createdAt,
			String delteStatus, String description, int categoryNo, int userNo, int regionNo) {
		super();
		this.productNo = productNo;
		this.productName = productName;
		this.productStatus = productStatus;
		this.price = price;
		this.createdAt = createdAt;
		this.delteStatus = delteStatus;
		this.description = description;
		this.categoryNo = categoryNo;
		this.userNo = userNo;
		this.regionNo = regionNo;
	}

	public int getProductNo() {
		return productNo;
	}

	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductStatus() {
		return productStatus;
	}

	public void setProductStatus(String productStatus) {
		this.productStatus = productStatus;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public String getDelteStatus() {
		return delteStatus;
	}

	public void setDelteStatus(String delteStatus) {
		this.delteStatus = delteStatus;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getCategoryNo() {
		return categoryNo;
	}

	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getRegionNo() {
		return regionNo;
	}

	public void setRegionNo(int regionNo) {
		this.regionNo = regionNo;
	}

	@Override
	public String toString() {
		return "Product [productNo=" + productNo + ", productName=" + productName + ", productStatus=" + productStatus
				+ ", price=" + price + ", createdAt=" + createdAt + ", delteStatus=" + delteStatus + ", description="
				+ description + ", categoryNo=" + categoryNo + ", userNo=" + userNo + ", regionNo=" + regionNo + "]";
	}
	
	
}
