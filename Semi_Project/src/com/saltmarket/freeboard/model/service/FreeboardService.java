package com.saltmarket.freeboard.model.service;

import static com.saltmarket.common.JDBCTemplate.close;
import static com.saltmarket.common.JDBCTemplate.getConnection;

import java.sql.Connection;

import com.saltmarket.freeboard.model.dao.FreeboardDao;

public class FreeboardService {
	
	public int selectListCount() {
		
		Connection conn = getConnection();
		
		int listCount = new FreeboardDao().selectListCount(conn);
		
		close(conn);
		
		return listCount;
		
	}

}
