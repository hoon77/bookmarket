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
import dao.DealDao;
import dao.MemberDao;
import dto.Book;
import dto.Member;
import util.GenreParser;

public class bookListPageNationAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		int page_num = Integer.parseInt(request.getParameter("page_num"));
		  
		
		page_num = (page_num - 1) * 10;
        System.out.println(page_num);
		
		BookDao bdo = BookDao.getInstance();
		
		MemberDao mdo = MemberDao.getInstance();
		
		
		List<Book> bookList = new ArrayList<>();
		bookList = bdo.selectbookByPagenation(page_num);
		
		List<Member> memberList = new ArrayList<Member>();
		List<String> genreList  =new ArrayList<>();

		
		
		Member member = null;
		GenreParser gp = new GenreParser();
        String get_genre ="";
		for (int i = 0; i < bookList.size(); i++) {

			member = mdo.getMember(bookList.get(i).getSeller());
			memberList.add(member);
			
			get_genre = gp.getGenreStr(bookList.get(i).getGenre());
			genreList.add(get_genre);
			
		}
	
		Gson gson = new Gson();
		String send_bookLIst= gson.toJson(bookList);
		String send_memberList = gson.toJson(memberList);
		String send_genreList = gson.toJson(genreList);
		String result = "{\"bookList\":" + send_bookLIst + ",\"memberList\":"+send_memberList+  ",\"genreList\":"+send_genreList +"}";
		System.out.println(result);
		PrintWriter pw = response.getWriter();
		pw.println(result);
		pw.flush();
		return;

	}

}