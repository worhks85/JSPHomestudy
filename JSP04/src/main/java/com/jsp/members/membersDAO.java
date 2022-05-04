package com.jsp.members;

import java.sql.*;

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
	private PreparedStatement pstmt;
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
		String query = "INSERT INTO members (id,pw,name,email,regDate,address)"
				+"values (?,?,?,?,?,?)";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, dto.getId() );
			pstmt.setString(2, dto.getPw());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4 ,dto.getEmail());
			pstmt.setTimestamp(5, dto.getRegDate());
			pstmt.setString(6, dto.getAddress());
			res = pstmt.executeUpdate();
					
		} catch (Exception e) {
			e.getStackTrace();
		}finally {
			close(pstmt);
			close(conn);
		}
		return res;
	}
	
	// members 테이블에 같은 아이디가 있는지 확인하는 메소드
	public int confirmID(String id) {
		int res = 0;
		String query = "SELECT * FROM members where id = ?";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			
					
		} catch (Exception e) {
			e.getStackTrace();
		}
		
		
		return res;
	}
	
	// id와 pw를 매개값으로 데이터를 받아 DB에 연결 후 입력받은 id로 pw 데이터 얻어오기
	// 아이디가 존재하지 않는다면 -1, 존재하고 비밀번호가 틀리다면 0 
	// 존재하고 비밀번호가 맞다면 1
	public int userCheck(String id ,String pw) {
		int res = 0;

		
		
		return res;
	}
	
	// id를 매개값으로 받아 DB 연결후 해당하는 id의 모든 컬럼의 데이터를 얻은 후 
	// DTO객체에 셋팅 하고 DTO 객체 리턴해주는 메소드
	public membersDTO getMember(String id) {
		membersDTO dto = null;
		
		
		
		return dto;
	}
	// DTO 객체를 매개값으로 받아 회원의 정보를 (pw,email,address)를 수정해주는 메소드
	public int updateMember(membersDTO dto) {
		int res = 0;
		
		
		
		return res;
	}
	
	
	
	
	
	
	
	
	

	

	private void close(PreparedStatement pstmt) {
		try {
			if (pstmt != null) pstmt.close();
		} catch (Exception e) {
			e.getStackTrace();
		}
	}
	private void close(Connection conn) {
		try {
			if (conn != null) conn.close();
		} catch (Exception e) {
			e.getStackTrace();
		}
	}
		
	private void close(ResultSet rs) {

		try {
			if (rs != null) rs.close();
		} catch (Exception e) {
			e.getStackTrace();
		}
	}
		
	}

