<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*, member.* " %>
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
		<h2 align="center" class="tit">회원목록 조회/수정</h2>
		<div align="center" id="secCon">
		<table border="1">
			<tr>
				<th>회원번호</th>
				<th>회원성명</th>
				<th>전화번호</th>
				<th>주소</th>
				<th>가입일자</th>
				<th>고객등급</th>
				<th>거주지역</th>
			</tr>
<%
		ArrayList members = (ArrayList)request.getAttribute("ALL");
		int size = members.size();
		for(int i=0; i<size; i++){
			Member mem = (Member)members.get(i);	
%>
		<tr>
			<td><a href="memberSelect.do?ID=<%= mem.getCustno()%>"><%= mem.getCustno()%></a></td>
			<td><%= mem.getName()%></td>
			<td><%= mem.getTel()%></td>
			<td><%= mem.getAddr() %></td>
			<td><%= mem.getDate() %></td>
			<td>
<%
				String g = mem.getGrade();
				if(g.equals("A")){
					out.print("VIP");
				}else if(g.equals("B")){
					out.print("일반");
				}else if(g.equals("C")){
					out.print("직원");
				}
%>	
			</td>
			<td><%= mem.getCode() %></td>
		</tr>
<%
		}
%>
	</table>
	</div>
	</section>
	<footer>
		<h3 align="center">HRDKOREA copyright 2022 all right reserved</h3>
	</footer>
</body>
</html>