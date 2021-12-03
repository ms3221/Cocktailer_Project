package com.user.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.user.controller.Action;
import com.user.controller.ActionForward;
import com.user.model.UserNoticeDAO;
import com.user.model.UserNoticeDTO;

public class UserNoticeSearchContAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// notice 테이블의 검색 리스트에서 글제목을 클릭 시 상세 내용을 보여주는 클래스. 
		int notice_no = Integer.parseInt(request.getParameter("no").trim());
		int nowPage = Integer.parseInt(request.getParameter("page").trim());
		
		UserNoticeDAO dao = UserNoticeDAO.getInstance(); 
		
		// 조회수 증가 메서드 호출 
		dao.noticeHit(notice_no);
		
		// 글번호에 해당하는 상세 내역을 조회하는 메서드 호출 
		UserNoticeDTO dto = dao.getNoticeCont(notice_no);
		
		// 키로 저장하여 view page로 이동 
		request.setAttribute("searchCont", dto);
		request.setAttribute("page", nowPage);

		ActionForward forward = new ActionForward(); 
		forward.setRedirect(false);
		forward.setPath("user/user_noticeSearchCont.jsp");
		
		return forward;
		
	}

}
