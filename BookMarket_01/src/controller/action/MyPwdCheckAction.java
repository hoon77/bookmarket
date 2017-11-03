package controller.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

import dao.MemberDao;
import dto.Member;

public class MyPwdCheckAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String password = request.getParameter("password");
		HttpSession session = request.getSession();
		Member loginUser = (Member) session.getAttribute("loginUser");
		MemberDao mDao = MemberDao.getInstance();
		int memberCheck = mDao.memberCheck(loginUser.getEmail(), password);
		JsonObject jo = new JsonObject();
		if(memberCheck > 0) {
			boolean result = true;
			jo.addProperty("result", result);
			boolean checkPass = true;
			session.setAttribute("checkPass", checkPass);
		}
		else {
			boolean result = false;
			jo.addProperty("result", result);
		}
		Gson gson = new Gson();
		String jsonString = gson.toJson(jo);
		PrintWriter pw = response.getWriter();
		pw.println(jsonString);
		pw.flush();
		return;
	}

}
