package com.saltmarket.freeboard.model.service;

import static com.saltmarket.common.JDBCTemplate.close;
import static com.saltmarket.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.saltmarket.common.model.vo.PageInfo;
import com.saltmarket.common.model.vo.SearchInfo;
import com.saltmarket.freeboard.model.dao.FreeboardDao;
import com.saltmarket.freeboard.model.vo.Freeboard;

public class FreeboardService {
	
	public int selectListCount(SearchInfo si) {
		
		Connection conn = getConnection();
		int listCount = new FreeboardDao().selectListCount(conn, si);
		close(conn);
		return listCount;
	}
	
	public ArrayList<Freeboard> selectList(PageInfo pi, SearchInfo si) {
		
		Connection conn = getConnection();
		ArrayList<Freeboard> list = new FreeboardDao().selectList(conn, pi, si);
		close(conn);
		return list;
	}
	
	public ArrayList<Freeboard> selectBestList(String category) {
		
		Connection conn = getConnection();
		ArrayList<Freeboard> bestList = new FreeboardDao().selectBestList(conn, category);
		close(conn);
		return bestList;
	}
	
	

}
