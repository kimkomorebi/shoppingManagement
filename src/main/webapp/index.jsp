<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link type="text/css" rel="stylesheet" href="myStyle.css">
<title>Insert title here</title>
</head>
<body>
	<header>
		<h1 align="center">쇼핑몰 회원관리 ver1.0</h1>
	</header>
	<menu>
		<jsp:include page="menu_header.jsp"/>
	</menu>
	<section>
		<h2 align="center" class="tit">쇼핑몰 회원관리 프로그램</h2>
		<p class="indexTxt">
			쇼핑몰 회원정보와 회원매출정보 데이터베이스를 구축하고
			회원관리 프로그램을 작성하는 프로그램이다.<br/>
			프로그램 작성 순서<br/>
			1. 회원정보 테이블을 생성한다.<br/>
			2. 매출정보 테이블을 생성한다.<br/>
			3. 회원정보, 매출정보 테이블에 제시된 문제지와 참조데이터를 추가 생성한다.<br/>
			4. 회원정보 입려 화면프로그램을 작성한다.<br/>
			5. 회원정보 조회 프로그램을 작성한다.<br/>
			6. 회원매출 정보 조회 프로그램을 작성한다.
		</p>
	</section>
	<footer>
		<h3 align="center">HRDKOREA copyright 2022 all right reserved</h3>
	</footer>
</body>
</html>