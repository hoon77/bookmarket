package controller;

import controller.action.Action;
import controller.action.BiddingAction;
import controller.action.BiddingChoiceAction;
import controller.action.BiddingFormAction;
import controller.action.BookDeleteAction;
import controller.action.BookInsertAction;
import controller.action.BookInsertFormAction;
import controller.action.BookInsertSearchAction;
import controller.action.BookListAction;
import controller.action.BookMoneyCheckAction;
import controller.action.BookNavigationAction;
import controller.action.BookOptionAction;
import controller.action.BookSearchAction;
import controller.action.BookUpdateFormAction;
import controller.action.CartAction;
import controller.action.CartAddAction;
import controller.action.DetailBookAction;
import controller.action.DropMemberAction;
import controller.action.DropMemberFormAction;
import controller.action.EmailCheckAction;
import controller.action.JoinAction;
import controller.action.JoinFormAction;
import controller.action.KeepBookAddAction;
import controller.action.LoginAction;
import controller.action.LogoutAction;
import controller.action.MainAction;
import controller.action.MyBookMoneyAction;
import controller.action.MyBookMoneyFormAction;
import controller.action.MyInfoAction;
import controller.action.MyInfoUpdateAction;
import controller.action.MyInfoUpdateFormAction;
import controller.action.MyKeepBookDeleteAction;
import controller.action.MyKeepBookListAction;
import controller.action.MyKeepBookListFormAction;
import controller.action.MyLogListAction;
import controller.action.MyMoneyChargeAction;
import controller.action.MyPageAction;
import controller.action.MyPurchaseListAction;
import controller.action.MyPurchaseListFormAction;
import controller.action.MyPwdCheckAction;
import controller.action.MySellListAction;
import controller.action.MySellListFormAction;
import controller.action.NavigationAction;
import controller.action.PaymentAction;
import controller.action.PaymentCheckPassAction;
import controller.action.PaymentSuccessAction;
import controller.action.SearchAction;
import controller.action.bookListPageNationAction;

public class ActionFactory {

	private static ActionFactory instance = null;

	public static ActionFactory getInstance() {
		if (instance == null) {
			instance = new ActionFactory();
		}
		return instance;
	}

	private ActionFactory() {
		super();
	}

	public Action getAction(String command) {
		Action action = null;

		if (command.equals("main")) {
			System.out.println("메인!");
			action = new MainAction();
		} else if (command.equals("navigation")) {
			action = new NavigationAction();
		} else if (command.equals("join_form")) {
			action = new JoinFormAction();
		} else if (command.equals("join")) {
			action = new JoinAction();
		} else if (command.equals("login")) {
			action = new LoginAction();
		} else if (command.equals("email_check")) {
			action = new EmailCheckAction();
		} else if (command.equals("logout")) {
			action = new LogoutAction();
		} else if (command.equals("cart")) {
			action = new CartAction();
		} else if (command.equals("search_list")) {
			action = new SearchAction();
		} else if (command.equals("book_list")) {
			action = new BookListAction();
		} else if (command.equals("detail_book")) {
			action = new DetailBookAction();
		} else if (command.equals("book_navigation")) {
			action = new BookNavigationAction();
		} else if (command.equals("book_search")) {
			action = new BookSearchAction();
		} else if (command.equals("book_option")) {
			action = new BookOptionAction();
		} else if (command.equals("book_update_form")) {
			action = new BookUpdateFormAction();
		} else if (command.equals("book_insert_form")) {
			action = new BookInsertFormAction(); // 2. 사용자 추가 입력하게 하고
		} else if (command.equals("book_insert")) {
			action = new BookInsertAction(); // 3. 해당 정보 DB에 보냄
		} else if (command.equals("book_insert_search")) {
			action = new BookInsertSearchAction(); // 1. 검색한 후
		} else if (command.equals("book_delete")) {
			action = new BookDeleteAction();
		} else if (command.equals("keepBook_add")) {
			action = new KeepBookAddAction();
		} else if (command.equals("cart_add")) {
			action = new CartAddAction();
		} else if (command.equals("mypage")) {
			action = new MyPageAction();
		} else if (command.equals("myInfo")) {
			action = new MyInfoAction();
		} else if (command.equals("myInfo_update_form")) {
			action = new MyInfoUpdateFormAction();
		} else if (command.equals("myInfo_update")) {
			action = new MyInfoUpdateAction();
		} else if (command.equals("myBookMoney")) {
			action = new MyBookMoneyAction();
		} else if (command.equals("myBookMoney_form")) {
			action = new MyBookMoneyFormAction();
		} else if (command.equals("myBookMoney_charge")) {
			action = new MyMoneyChargeAction();
		} else if (command.equals("myPurchase_list")) {
			action = new MyPurchaseListAction();
		} else if (command.equals("myPurchase_list_form")) {
			action = new MyPurchaseListFormAction();
		} else if (command.equals("mySell_list")) {
			action = new MySellListAction();
		} else if (command.equals("mySell_list_form")) {
			action = new MySellListFormAction();
		} else if (command.equals("myKeep_list_form")) {
			action = new MyKeepBookListFormAction();
		} else if (command.equals("myKeep_list")) {
			action = new MyKeepBookListAction();
		} else if (command.equals("myKeepBook_purchase")) {
			action = new MyKeepBookDeleteAction();
		} else if (command.equals("myLog_list")) {
			action = new MyLogListAction();
		} else if (command.equals("myPwd_check")) {
			action = new MyPwdCheckAction();
		} else if (command.equals("drop_member")) {
			action = new DropMemberAction();
		} else if (command.equals("drop_member_from")) {
			action = new DropMemberFormAction();
		} else if (command.equals("payment")) {
			action = new PaymentAction();
		} else if (command.equals("bookMoney_check")) {
			action = new BookMoneyCheckAction();
		} else if (command.equals("payment_check_pass")) {
			action = new PaymentCheckPassAction();
		} else if (command.equals("bidding_form")) {
			action = new BiddingFormAction();
		} else if (command.equals("bidding")) {
			action = new BiddingAction();
		} else if (command.equals("bidding_choice")) {
			action = new BiddingChoiceAction();
		} else if (command.equals("payment_success")) {
			action = new PaymentSuccessAction();
		} else if (command.equals("booklist_pagenation")) {
			action = new bookListPageNationAction();
		}

		System.out.println("ActionFactory: " + command);
		return action;

	}

}
