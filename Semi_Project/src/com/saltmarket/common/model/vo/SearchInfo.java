package com.saltmarket.common.model.vo;

public class SearchInfo {
	
	private String category;
	private String kind;
	private String keyword;
	
	public SearchInfo() {}

	public SearchInfo(String category, String kind, String keyword) {
		super();
		this.category = category;
		this.kind = kind;
		this.keyword = keyword;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	@Override
	public String toString() {
		return "SearchInfo [category=" + category + ", kind=" + kind + ", keyword=" + keyword + "]";
	}
	
	
	

}
