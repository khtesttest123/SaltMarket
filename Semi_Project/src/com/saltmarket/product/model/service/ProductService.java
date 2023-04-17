package com.saltmarket.product.model.service;

import static com.saltmarket.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.saltmarket.common.model.vo.PageInfo;
import com.saltmarket.product.model.dao.ProductDao;
import com.saltmarket.product.model.vo.Category;
import com.saltmarket.product.model.vo.Product;
import com.saltmarket.common.model.vo.ImgFile;

public class ProductService {

	public int selectListCount() {
		Connection conn = getConnection();
		int listCount = new ProductDao().selectListCount(conn);
		close(conn);
		
		return listCount;
	}
	
	public ArrayList<Product> selectList(PageInfo pi){
		Connection conn = getConnection();
		ArrayList<Product> list = new ProductDao().selectList(conn, pi);
		close(conn);
		
		return list;
	}
	
	public ArrayList<Category> selectCategoryList(){
		Connection conn = getConnection();
		
		ArrayList<Category> list = new ProductDao().selectCategoryList(conn);
		
		close(conn);
		
		return list;
	}
	
	// 조회수 증가
	public int increaseCount(int productNo) {
		Connection conn = getConnection();
		int result = new ProductDao().increaseCount(conn, productNo);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}
	
	// 상품 상세보기
	public Product selectProduct(int productNo) {
		Connection conn = getConnection();
		Product p = new ProductDao().selectProduct(conn, productNo);

		close(conn);
		
		return p;
	}
	
	// 이미지 파일 조회
	public ImgFile selectImage(int productNo) {
		Connection conn = getConnection();
		ImgFile i = new ProductDao().selectImgFile(conn, productNo);
		
		close(conn);
		
		return i;
	}
}
