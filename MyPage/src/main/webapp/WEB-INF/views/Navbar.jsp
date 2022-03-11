<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>

<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top" style="width: 100%;">
	<div class="container-fluid">
		<img class="navbar-brand" src="/resources/img/아이콘.png" style="padding:0; margin-left:10px;">
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="/">Home</a></li>
				<c:if test="${member == null}"></c:if>
				<c:if test="${member != null }">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#"
						id="navbarDropdownMenuLink" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> Project Link
					</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
							<li><a class="dropdown-item" href="/project/python">파이썬
									프로젝트</a></li>
							<li><a class="dropdown-item" href="/project/spring">스프링
									프로젝트</a></li>
							<li><a class="dropdown-item" href="/project/csharp"> C#
									프로젝트</a></li>
						</ul></li>
				</c:if>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#"
					id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown"
					aria-expanded="false"> Board Link </a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<li><a class="dropdown-item" href="/board/list">게시판</a></li>
						<li><a class="dropdown-item" href="/board/writeView">글 작성</a></li>
					</ul></li>
			</ul>
			<c:if test="${member == null}">
				<ul style="width: 880px;"></ul>
				<div class="container-fluid"
					style="display: inline-block; width: 300px;">
					<a class="btn" href="/login_page"
						style="background-color: #008080; color: white; width: 95px;">로그인</a>
					<a class="btn" href="/member/memberRegister"
						style="background-color: #008080; color: white; width: 95px; margin-left: 10px;">회원가입</a>
				</div>
			</c:if>
			<c:if test="${member != null }">
				<ul style="width: 750px;"></ul>
				<div class="container-fluid"
					style="display: inline-block; width: 300px;">
					<a class="btn" href="/member/logout" role="button"
						style="background-color: #008080; color: white; width: 95px;">로그아웃</a>
					<a class="btn" href="/member/memberUpdateView"
						style="background-color: #008080; color: white; width: 130px; margin-left: 10px;">회원정보수정</a>
				</div>
			</c:if>
		</div>
	</div>
</nav>
<!-- <a href="/board/list">게시판</a><br />
	<a href="/board/writeView">글 작성</a> -->