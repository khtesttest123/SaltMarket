package com.saltmarket.member.model.service;

import java.sql.Connection;

import com.saltmarket.common.JDBCTemplate;
import com.saltmarket.member.model.dao.MemberDao;
import com.saltmarket.member.model.vo.Member;

public class MemberService {
	
	// 로그인 요청 서비스
	public Member loginMember(Member m) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		Member loginUser = new MemberDao().loginMember(conn, m);
		
		JDBCTemplate.close(conn);
		
		return loginUser;
	}

}
