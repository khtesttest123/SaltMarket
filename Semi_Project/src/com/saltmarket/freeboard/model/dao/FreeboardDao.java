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
import com.saltmarket.common.model.vo.SearchInfo;
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
	

	public int selectListCount(Connection conn, SearchInfo si) {

		int listCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = null; 

		try {

			if(si.getKind().equals("null")) {

				sql = prop.getProperty("selectListCount");
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, si.getCategory());
				pstmt.setString(2, si.getCategory());
				rset = pstmt.executeQuery();

			} else {

				if(si.getKind().equals("title")) {
					sql = prop.getProperty("selectTitleSearchListCount");
				} else if(si.getKind().equals("name")) {
					sql = prop.getProperty("selectNameSearchListCount");
				}
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, si.getCategory());
				pstmt.setString(2, si.getCategory());
				pstmt.setString(3, "%" + si.getKeyword() + "%");
				rset = pstmt.executeQuery();
			}
			
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

	public ArrayList<Freeboard> selectList(Connection conn, PageInfo pi, SearchInfo si) {

		ArrayList<Freeboard> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = null;

		int startRow = (pi.getCurrentPage() -1) * pi.getBoardLimit() + 1;
		int endRow = pi.getCurrentPage() * pi.getBoardLimit();

		try {

			if(si.getKind().equals("null")) {
				
				sql = prop.getProperty("selectList");
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, si.getCategory());
				pstmt.setString(2, si.getCategory());
				pstmt.setInt(3, startRow);
				pstmt.setInt(4, endRow);
				rset = pstmt.executeQuery();
				
			} else {
				
				if(si.getKind().equals("title")) {
					sql = prop.getProperty("selectTitleSearchList");
				} else if(si.getKind().equals("name")) {
					sql = prop.getProperty("selectNameSearchList");
				}
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, si.getCategory());
				pstmt.setString(2, si.getCategory());
				pstmt.setString(3, "%" + si.getKeyword() + "%");
				pstmt.setInt(4, startRow);
				pstmt.setInt(5, endRow);
				rset = pstmt.executeQuery();
			}
			
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











