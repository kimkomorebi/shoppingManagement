<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="member.* " %>
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
		<h2 align="center" class="tit">홈쇼핑 회원 정보 수정</h2>
		<div align="center" id="secCon">
			<form action="memberUpdate.do" method="post" onSubmit="return check()">
			<table border="1">
<%
				Member member = (Member)request.getAttribute("MEM");
%>
			<tr>
				<th>회원번호</th>
				<td>
					<input type="text" name="ID" readonly value="<%= member.getCustno() %>"/>
				</td>
			</tr>
			<tr>
				<th>회원성명</th>
				<td>
					<input type="text" name="NAME" value="<%= member.getName() %>"/>
				</td>
			</tr>
			<tr>
				<th>회원전화</th>
				<td><input type="text" name="TEL" value="<%= member.getTel() %>"/></td>
			</tr>
			<tr>
				<th>회원주소</th>
				<td>
					<input type="text" name="ADDR" value="<%= member.getAddr() %>"/>
				</td>
			</tr>
			<tr>
				<th>가입일자</th>
				<td>
					<input type="date" name="DATE" value="<%= member.getDate() %>"/>
				</td>
			</tr>
			<tr>
				<th>고객등급[A:VIP, B:일반, C:직원]</th>
				<td>
					<input type="text" name="LEVEL" value="<%= member.getGrade() %>"/>
				</td>
			</tr>
			<tr>
				<th>도시코드</th>
				<td>
					<input type="text" name="CITY" value="<%=member.getCode() %>"/>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="수정" name="btn"/>
					<input type="submit" value="조회" name="btn"/>
				</td>
			</tr>
			</table>
			</form>
		</div>
	</section>
	<footer>
		<h3 align="center">HRDKOREA copyright 2022 all right reserved</h3>
	</footer>
	<script type="text/javascript">
		function check(){
			if(confirm("작업을 진행하시겠습니까?")){
				return true;
			}else{
				return false;
			}
		}
	</script>
</body>
</html>