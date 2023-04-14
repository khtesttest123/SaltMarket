package com.saltmarket.product.model.service;

import static com.saltmarket.common.JDBCTemplate.close;
import static com.saltmarket.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.saltmarket.common.model.vo.PageInfo;
import com.saltmarket.product.model.dao.ProductDao;
import com.saltmarket.product.model.vo.Product;

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
}
