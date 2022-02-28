<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>로그인</title>
</head>
<script type="text/javascript">
	$(document).ready(function() {
		//취소
		$(".cancle").on("click", function() {

			location.href = "/";
		})
	})
</script>
<style>
.box01 {
	width: 420px;
	height: 270px;
	position: relative;
	padding: 25 35;
	margin: 25 25;
	z-index: 1;
}

.box01::before {
	height: 270px;
	content: "";
	background-color: gray;
	background-size: cover;
	opacity: 0.6;
	position: absolute;
	top: 0px;
	left: 0px;
	right: 0px;
	bottom: 0px;
	z-index: -1;
}
</style>
<body style="background-image: url('../resources/img/배경화면1.png')">
	<section id="container">
		<div class="container">
			<div class="row">
				<div class="col"></div>
				<div class="col align-self-center" style="margin-top: 150px;">
					<div class="box01">
						<form name='homeForm' method="post" action="/member/login">
							<div class="form-group has-feedback">
								<label class="control-label" for="userId">아이디</label>
								 <input	class="form-control" type="text" id="userId" name="userId" />
							</div>
							<div class="form-group has-feedback">
								<label class="control-label" for="userPass">패스워드</label> 
								<input class="form-control" type="password" id="userPass" name="userPass" />
							</div>
							<div class="form-group has-feedback" style="float:right; margin-top:20px;">
								<button class="btn btn-success" type="submit">로그인</button>
								<button class="cancle btn btn-danger" type="button">취소</button>
							</div>
							<c:if test="${msg == false}">
								<p style="color: red; margin-top:80px;">로그인 실패! 아이디와 비밀번호 확인해주세요.</p>
							</c:if>
						</form>
					</div>
				</div>
				<div class="col"></div>
			</div>
		</div>
	</section>
</body>
</html>