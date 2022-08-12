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
		<h2 align="center" class="tit">로그인 결과</h2>
<%
	String result = request.getParameter("R");
	if(result.equals("OK")){
		//로그인 성공 메세지 출력
		out.print("로그인 되었습니다.<br/>");
		String id = (String)session.getAttribute("LOGINID");
		out.print("환영합니다~ "+id+"님~");
	}else if(result.equals("NOPWD")){
		//암호 불일치 메세지 출력
		out.print("암호가 일치하지 않습니다. 암호를 확인하세요.");
	}else if(result.equals("NOID")){
		//계정 없음 메세지 출력
		out.print("계정이 업습니다.가입 후 이용해 주세요.");
	}
%>
	</section>
	<footer>
		<h3 align="center">HRDKOREA copyright 2022 all right reserved</h3>
	</footer>
</body>
</html>