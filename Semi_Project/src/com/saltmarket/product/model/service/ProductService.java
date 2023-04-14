package com.saltmarket.product.model.service;

import static com.saltmarket.common.JDBCTemplate.close;
import static com.saltmarket.common.JDBCTemplate.getConnection;

import java.sql.Connection;

import com.saltmarket.product.model.dao.ProductDao;

public class ProductService {

	public int selectListCount() {
		Connection conn = getConnection();
		int listCount = new ProductDao().selectListCount(conn);
		close(conn);
		
		return listCount;
	}
}
