<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="div-mypwd-check" class="">
		<h1> 비밀번호 확인</h1>
		<form id="frm-mypwd-check" action="bookmarket" name="frm-mypwd-check"  align="center" >
			<input type="hidden" name="command" value="myPwd_check">
			<table id="table-mypwd-check" style="width: 80%">
				<tr>
					<th style="text-align:right">비밀번호</th>
					<td><input type="password" id="pwd-mypwd-check" 
					title="WRONG" data-content="비밀번호가 틀렸습니다." size="21" ></td>
				</tr>
			</table>
			<input id="btn-mypwd-check" class="btn" type="button" value="확 인">
		</form>
	</div>
</body>
</html>