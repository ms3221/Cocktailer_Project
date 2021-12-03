package com.user.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


public class UserNoticeDAO {
	Connection con = null;              // DB 연결하는 객체.
	PreparedStatement pstmt = null;     // DB에 SQL문을 전송하는 객체.
	ResultSet rs = null;                // SQL문을 실행 후 결과 값을 가지고 있는 객체.
	
	String sql = null;                  // 쿼리문을 저장할 객체.

	// 싱글톤 방식으로 BoardDAO 객체를 만들자.
	// 1단계 : 싱글톤 방식으로 객체를 만들기 위해서는 우선적으로 
	//       기본생성자의 접근제어자를  private 으로 선언을 해야 함.
	// 2단계 : 정적 멤버로 선언을 해야 함 - static 으로 선언을 한다는 의미.
	private static UserNoticeDAO instance = null;
	
	// 3단계 : 외부에서 객체 생성을 하지 못하게 접근을 제어 - private 기본 생성자를 만듬.
	private UserNoticeDAO() { }
	
	// 4단계 : 기본 생성자 대신에 싱긑턴 객체를 return을 해 주는 getInstance()
	//        메서드를 만들어서 여기에 접근하게 하는 방법
	public static UserNoticeDAO getInstance() {
		if(instance == null) {
			instance = new UserNoticeDAO();
		}
		return instance;
	}  // getInstance() 메서드 end
	
	// DB 연동하는 작업을 진행하는 메서드 - DBCP방식으로 연결 진행
	public void openConn() {
		
		
		try {
			// 1단계 : JNDI 서버 객체 생성.
			Context ctx = new InitialContext();
			
			// 2단계 : lookup() 메서드를 이용하여 매칭되는 커넥션을 찾는다.
			DataSource ds = 
				(DataSource)ctx.lookup("java:comp/env/jdbc/myoracle");
			
			// 3단계 : DataSource 객체를 이용하여 커넥션 객체를 하나 가져온다.
			con = ds.getConnection();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}  // openConn() 메서드 end
	
	// DB에 연결된 객체를 종료하는 메서드 
	public void closeConn(ResultSet rs, PreparedStatement pstmt, Connection con) {
		
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	} // closeConn() 메서드 end 
	
	// socks_notice 테이블의 전체 게시물의 수를 조회하는 메서드 
		public int getListCount() {
			int count = 0; 
		
			try {
				openConn(); 
				
				sql = "select count(*) from socks_notice"; 
				
				pstmt = con.prepareStatement(sql);
				rs = pstmt.executeQuery(); 
				
				if(rs.next()) {
					count = rs.getInt(1); 
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				closeConn(rs, pstmt, con);
			}
			return count; 
		}// getListCount()메서드 end
	
	
	// socks_notice 테이블 페이지에 보여질 게시물의 수만큼 게시물을 조회하는 메서드 
	public List<UserNoticeDTO> getUserNoticeList(int page, int rowsize){
		List<UserNoticeDTO> list = new ArrayList<UserNoticeDTO>(); 
		// 해당 페이지에서의 시작 번호 
		int startNo = (page * rowsize) - (rowsize - 1);
				
		// 해당페이지에서의 마지막 번호 
		int endNo = (page * rowsize); 
		
		try {
			openConn();
			
			sql = "select * from "
					+ " (select row_number() "
					+ " over(order by notice_no desc) rnum, "
					+ " n.*  from socks_notice n) "
					+ " where rnum >= ? and rnum <= ?";

			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, startNo);
			pstmt.setInt(2, endNo);
			
			rs = pstmt.executeQuery(); 
			
			while(rs.next()) {
				UserNoticeDTO dto = new UserNoticeDTO(); 
				dto.setNotice_no(rs.getInt("notice_no"));
				dto.setNotice_title(rs.getString("notice_title"));
				dto.setNotice_content(rs.getString("notice_content"));
				dto.setNotice_hit(rs.getInt("notice_hit"));
				dto.setNotice_regdate(rs.getString("notice_regdate"));
				
				list.add(dto); 
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeConn(rs, pstmt, con);
		}
		return list; 
	}// getUserNoticeList() 메서드 end
	
	//socks_notice 테이블에서 검색어에 해당하는 게시물의 수를 조회하는 메서드 
	public int searchListCount(String name) {
		int count = 0; 
		
		try {
			openConn();
			sql = "select count(*) from socks_notice"
					+ " where notice_title like ?"
					+ " or notice_content like ?";
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, "%"+name+"%");
			pstmt.setString(2, "%"+name+"%");
			
			rs = pstmt.executeQuery(); 
			
			if(rs.next()) {
				count = rs.getInt(1); 
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeConn(rs, pstmt, con);
		}
		return count; 
		
	}// searchListCount() 메서드 end 
	
	// socks_notice 테이블에서 검색한 내용을 가지고 페이징 처리를 하는 메서드 
	public List<UserNoticeDTO> searchNoticeList(String name, int page, int rowsize){
		List<UserNoticeDTO> list = new ArrayList<UserNoticeDTO>(); 
		
		// 해당 페이지에서 시작 번호
		int startNo = (page * rowsize) - (rowsize - 1);
		
		// 해당 페이지에서 마지막 번호
		int endNo = (page * rowsize);
	
		try {
			openConn(); 
			
			sql = "select * from "
					+ " (select row_number() "
					+ " over(order by notice_no desc) rnum, "
					+ " n.*  from socks_notice n where notice_title like ?"
					+ " or notice_content like ?) "
					+ " where rnum >= ? and rnum <= ?";
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, "%"+name+"%");
			
			pstmt.setString(2, "%"+name+"%");
			
			pstmt.setInt(3, startNo);
			
			pstmt.setInt(4, endNo);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				UserNoticeDTO dto = new UserNoticeDTO(); 
				dto.setNotice_no(rs.getInt("notice_no"));
				dto.setNotice_title(rs.getString("notice_title"));
				dto.setNotice_content(rs.getString("notice_content"));
				dto.setNotice_hit(rs.getInt("notice_hit"));
				dto.setNotice_regdate(rs.getString("notice_regdate"));
				
				list.add(dto); 
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeConn(rs, pstmt, con);
		}
		return list; 
	} // searchNoticeList() 메서드 end 
	
	// socks_notice 테이블의 게시물의 조회수를 증가시키는 메서드 
	public void noticeHit(int no) {	
		
		try {
			openConn();
			
			sql = "update socks_notice set "
					+ " notice_hit = notice_hit + 1 "
					+ " where notice_no = ?";
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, no);
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeConn(rs, pstmt, con);
		}
	} // noticeHit() 메서드 end 
	
	// socks_notice 테이블에서 게시물 번호에 해당하는 게시글을 조회하는 메서드 
	public UserNoticeDTO getNoticeCont(int no) {
		UserNoticeDTO dto = new UserNoticeDTO(); 
		
		try {
			openConn();
			
			sql = "select * from socks_notice "
					+ " where notice_no = ?";
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, no);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dto.setNotice_no(rs.getInt("notice_no"));
				dto.setNotice_title(rs.getString("notice_title"));
				dto.setNotice_content(rs.getString("notice_content"));
				dto.setNotice_hit(rs.getInt("notice_hit"));
				dto.setNotice_regdate(rs.getString("notice_regdate"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeConn(rs, pstmt, con);
		}
		return dto; 
	}//getNoticeCont() 메서드 end
}
