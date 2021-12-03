package com.user.action;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.user.controller.Action;
import com.user.controller.ActionForward;
import com.user.model.UserNoticeDAO;
import com.user.model.UserNoticeDTO;

public class hiAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// notice 테이블의 검색 리스트에서 글제목을 클릭 시 상세 내용을 보여주는 클래스. 
		String sia = request.getParameter("sia").trim();
		System.out.println(sia);
		
		// Connection 객체를 자동완성으로 import할 때는 com.mysql.connection이 아닌
        // java 표준인 java.sql.Connection 클래스를 import해야 한다.
        Connection conn = null;

        try{
            // 1. 드라이버 로딩
            // 드라이버 인터페이스를 구현한 클래스를 로딩
            // mysql, oracle 등 각 벤더사 마다 클래스 이름이 다르다.
            // mysql은 "com.mysql.jdbc.Driver"이며, 이는 외우는 것이 아니라 구글링하면 된다.
            // 참고로 이전에 연동했던 jar 파일을 보면 com.mysql.jdbc 패키지에 Driver 라는 클래스가 있다.
            Class.forName("com.mysql.jdbc.Driver");

            // 2. 연결하기
            // 드라이버 매니저에게 Connection 객체를 달라고 요청한다.
            // Connection을 얻기 위해 필요한 url 역시, 벤더사마다 다르다.
            // mysql은 "jdbc:mysql://localhost/사용할db이름" 이다.
            String url = "jdbc:mysql://localhost:3306/user_system?useUnicode=true&serverTimezone=Asia/Seoul";

            // @param  getConnection(url, userName, password);
            // @return Connection
            conn = DriverManager.getConnection(url, "root", "rt950314");
            System.out.println("연결 성공");

        }
        catch(ClassNotFoundException e){
            System.out.println("드라이버 로딩 실패");
        }
        catch(SQLException e){
            System.out.println("에러: " + e);
        }
        finally{
            try{
                if( conn != null && !conn.isClosed()){
                    conn.close();
                }
            }
            catch( SQLException e){
                e.printStackTrace();
            }
        }
        
        
		
		
//		UserNoticeDAO dao = UserNoticeDAO.getInstance(); 
//		
//		// 조회수 증가 메서드 호출 
//		dao.noticeHit(notice_no);
//		
//		// 글번호에 해당하는 상세 내역을 조회하는 메서드 호출 
//		UserNoticeDTO dto = dao.getNoticeCont(notice_no);
//		
//		// 키로 저장하여 view page로 이동 
		request.setAttribute("sia", sia);
//		request.setAttribute("page", nowPage);

		ActionForward forward = new ActionForward(); 
		forward.setRedirect(false);
		forward.setPath("user/test.jsp");
//		
		return forward;
		
		
		
	}

}
