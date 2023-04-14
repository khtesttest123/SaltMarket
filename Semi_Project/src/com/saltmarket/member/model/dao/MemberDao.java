package com.saltmarket.member.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.saltmarket.common.JDBCTemplate;
import com.saltmarket.member.model.vo.Member;

public class MemberDao {
	
	private Properties prop = new Properties();
	
	public MemberDao() {
		
		String fileName = MemberDao.class.getResource("/sql/member/member-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public Member loginMember(Connection conn, Member m) {
		
		// 변수 셋팅
		Member loginUser = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		// 실행할 쿼리문
		String sql = prop.getProperty("loginMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, m.getUserId());
			pstmt.setString(2, m.getUserPwd());
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				loginUser = new Member(rset.getInt("USER_NO")
						             , rset.getString("USER_PWD")
						             , rset.getString("USER_NAME")
						             , rset.getDate("BIRTH")
						             , rset.getString("PHONE")
						             , rset.getString("EMAIL")
						             , rset.getString("USER_ID")
						             , rset.getDate("ENROLL_DATE")
						             , rset.getString("STATUS")
						             , rset.getInt("SALTY_SCORE")
						             , rset.getInt("GRADE_NO")
						             , rset.getInt("REGION_NO"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return loginUser;
	}

}
