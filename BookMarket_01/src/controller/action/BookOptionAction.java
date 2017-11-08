package controller.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import dao.BookDao;
import dao.MemberDao;
import dto.Book;
import dto.Member;

public class BookOptionAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		String option = request.getParameter("option");
		int genre = Integer.parseInt(request.getParameter("genre"));
		MemberDao mdo = MemberDao.getInstance();
		BookDao bdo = BookDao.getInstance();
		List<Book> bookList = new ArrayList<Book>();
		List<Member> memberList = new ArrayList<Member>();
		Member member = null;
		if (option.equals("fixedPrice")) {

			bookList = bdo.selectBookByPriceType(1, 0);

		}

		else if (option.equals("biddingPrice")) {
			bookList = bdo.selectBookByPriceType(1, 1);

		}

		else if (option.equals("Condition")) {

		}

		else if (option.equals("lower")) {

		}

		else if (option.equals("lately")) {

		}
  
		

		for (int i = 0; i < bookList.size(); i++) {

			member = mdo.getMember(bookList.get(i).getSeller());
			memberList.add(member);
		}
		
		
		Gson gson = new Gson();
		String result = gson.toJson(bookList);
		result = "{\"bookList\":" + result + "}";
		System.out.println(result);
		PrintWriter pw = response.getWriter();
		pw.println(result);
		pw.flush();
		return;

	}

}
