<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>

<head>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<title>Home</title>
<%@ include file="Navbar.jsp"%>
<c:if test="${member != null }">
	<p style="float: right; margin-top:55px; margin-right: 100px;">${member.userId}님 환영합니다.</p>
</c:if>
</head>
<body style="background-image: url('../resources/img/배경화면1.png')">
<div class="container" style="position:absolute; margin-top:100px;">
<div ><h1 style="width:1340px; padding:25px; border-radius:25px 25px 25px 25px; border:20px solid white;">회원가입기능을 사용하거나, 아이디:lsh 비밀번호:1234로 접속하세요~</h1></div>
  <div class="row align-items-start" style="margin-left:100px; margin-top:40px;">
    <div class="col-3">
      <div>
      <div class="container" style="margin-bottom:40px;">
      <img style="margin-left:20px; width:210px; height:230px; border-radius:50%;" src="../resources/img/프로필용사진.png">
      </div>
      <p>NAME  &nbsp;이승훈(Lee Seung Hun)</p>
      <p>BIRTH &nbsp;1992.04.20</p>
      <p>TEL &nbsp; &nbsp;&nbsp; 010-3926-1685</p>
      <p>EMAIL &nbsp;mysky0420@naver.com</p>
      <p style="margin-top:35px; margin-bottom:25px;">SKILL</p>
      <p>JAVA</p>
      <p>SPING</p>
      <p>PYTHON</p>
      <p style="margin-bottom:45px;">C#</p>
      <p><b><i>"세상의 모든 일은 여러분이 무엇을 생각하느냐에 따라 일어난다."</i></b></p>
      <p> - 오프라 윈프리가 했던 말입니다. 지금은 비록 배운것이 부족하지만 더 나은 나를 생각하며 내일과 미래가 기대되는 개발자가 되겠습니다.</p>
      </div>
    </div>
    <div class="col-5" style="margin-left:90px;">
	    <div style="margin-bottom:50px;">
		    <h4 style="margin-bottom:20px;">ACTIVE</h4>
		    <p>python - 쿠팡최저가 검색(조별프로젝트)</p>
		    <p>spring - 나만의 사이트만들기(개인프로젝트)</p>
		    <p>csharp - 식당 주문 & 주차관리 프로그램(개인프로젝트)</p>
	    </div>
	</div>
	<div class="col-3" >
	    <div style="margin-bottom:50px;">
	    	<h4 style="margin-bottom:20px;">LICENSE</h4>
	    	<p style="text-decoration:line-through">2022.04.24 정보처리기사(시험쳐야지...)</p>
	    </div>
	    <div style="margin-bottom:50px;">
	    	<h4 style="margin-bottom:20px;">EDUCATION</h4>
	    	<p>대구고등학교 졸업</p>
	    	<p style="margin-bottom:20px;">경북산업전문학원(인공지능&빅데이터 수료 예정)</p>
	    </div>
    </div>
  </div>
</div>
</body>
</html>