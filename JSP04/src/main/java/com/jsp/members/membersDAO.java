package com.jsp.members;

import java.sql.Connection;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class membersDAO {
private membersDAO() {}
	private static membersDAO instance = new membersDAO();
	public static membersDAO getInstance() {
		return instance;
	}
	private DataSource ds;
	private Connection conn;
	private ResultSet rs;
	
	{
	
		try {
			Context context = new InitialContext();
			ds = (DataSource)context.lookup("java:comp/env/jdbc/oracle");
			
			
		} catch (Exception e) {
			e.getStackTrace();
		}
	}
	
	// form에서 입력한 데이터를 DB에 넣어주는 메소드
	public int insertMember(membersDTO dto) {
		int res =0;
		
		
		
		return res;
	}
	
	// members 테이블에 닽은 아이디가 있는지 확인하는 메소드
	public int confirmID(String id) {
		int res = 0;
		
		
		
		return res;
	}
	
	//
	
	
	
	
	
	
	
	
	
	

	
	private void close(DataSource ds) {
		try {
				if(ds != null) ds.
		} catch (Exception e) {
			e.getStackTrace();
		}
	}
	private void close(Connection conn) {
		
	}
	private void close(ResultSet rs) {
		
	}
}
