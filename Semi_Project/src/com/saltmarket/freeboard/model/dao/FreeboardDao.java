package com.saltmarket.freeboard.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.saltmarket.common.JDBCTemplate;
import com.saltmarket.common.model.vo.PageInfo;
import com.saltmarket.freeboard.model.vo.Freeboard;

public class FreeboardDao {

	private Properties prop = new Properties();

	public FreeboardDao() {

		String fileName = FreeboardDao.class.getResource("/sql/board/freeboard-mapper.xml").getPath();

		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	

	public int selectListCount(Connection conn, String category) {
		
		int listCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String sql = prop.getProperty("selectListCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, category);
			pstmt.setString(2, category);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				listCount = rset.getInt("COUNT"); // 별칭으로도 데이터 뽑기 가능
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return listCount;
	}
	
	public ArrayList<Freeboard> selectList(Connection conn, PageInfo pi, String category) {
		
		ArrayList<Freeboard> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage() -1) * pi.getBoardLimit() + 1;
			int endRow = pi.getCurrentPage() * pi.getBoardLimit();
			
			pstmt.setString(1, category);
			pstmt.setString(2, category);
			pstmt.setInt(3, startRow);
			pstmt.setInt(4, endRow);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Freeboard(rset.getInt("FREE_BOARD_NO")
												  , rset.getString("USER_NAME")
												  , rset.getString("BOARD_TITLE")
												  , rset.getDate("CREATED_DATE")
												  , rset.getInt("BOARD_VIEWS")
												  , rset.getString("CATEGORY")
												  ));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return list;
	}
	
	public ArrayList<Freeboard> selectBestList(Connection conn, String category) {
		
		ArrayList<Freeboard> bestList = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectBestList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, category);
			pstmt.setString(2, category);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				bestList.add(new Freeboard(rset.getInt("FREE_BOARD_NO")
												  , rset.getString("BOARD_TITLE")
												  , rset.getInt("BOARD_VIEWS")
												  ));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return bestList;
	}
	
	
}











