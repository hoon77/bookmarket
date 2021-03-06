package controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDao;
import dto.Member;

public class MyPageAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "/member/login.jsp";
		HttpSession session =request.getSession();
		if(session.getAttribute("loginUser") != null) {
			url = "/mypage/myPage.jsp";
			Member loginUser = (Member) session.getAttribute("loginUser");
			session.setAttribute("loginUser", MemberDao.getInstance().getMember(loginUser.getMem_id()));
			System.out.println("mypage/loginUser: "+loginUser);
		}
		RequestDispatcher disp = request.getRequestDispatcher(url);
		disp.forward(request, response);
	}

}
