<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert Book Button</title>
<script>
	$(document).ready(function() {

		$(document).on('click', '.cart_btn', function() {
			var book_id = '${book.book_id}';
			var params = "command=cart_add&book_id=" + book_id;
			alert(params);
			$.ajax({
				url : 'bookmarket',
				type : 'get',
				data : params,
				success : function(data) {
					alert(data);
				}
			});

		})

		$(document).on('click', '.keep_btn', function() {

			var book_id = '${book.book_id}';
			var params = "command=keepBook_add&book_id=" + book_id;
			$.ajax({
				url : 'bookmarket',
				type : 'get',
				data : params,
				success : function(data) {
					alert(data);
				}
			});

		})

		$('#btn_cart').on('click', function() {

		});

	});
</script>
<style>
.condition_info_wrapper {
	border-top: 1px solid #ddd;
	margin-left: 40px;
}

.button_div {
	width: 20%;
	float: left;
	height: 100%;
}

.button_large {
	width: 60%;
}
</style>
</head>
<body>
	<section class="condition_info_wrapper row placeholders">
	<div class="button_div button_large">
		<button type="button"
			class="btn btn-primary btn-lg btn-block btn-half" id="btn_buy">구매하기</button>
	</div>
	<div class="button_div">
		<button type="button"
			class="btn btn-primary btn-lg btn-block btn-half" id="cart_btn">
			<i class="fa fa-shopping-cart" aria-hidden="true"></i>
		</button>
	</div>
	<div class="button_div">
		<button type="button"
			class="btn btn-primary btn-lg btn-block btn-half" id="keep_btn">
			<i class="fa fa-heart" aria-hidden="true"></i>
		</button>
	</div>
	</section>
</body>
</html>