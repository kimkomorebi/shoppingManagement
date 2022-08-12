<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
	<div align="center">
	<table>
		<tr>
	<td><a href="memberEntry.do">● 회원등록</a>&nbsp;</td>
	<td><a href="memberAll.do">● 회원목록 조회/수정</a>&nbsp;</td>
	<td><a href="salesAll.do">● 회원매출 조회</a>&nbsp;</td>
	<td><a href="index.jsp">● 홈으로</a>&nbsp;</td>
	
	<%
	String id = (String)session.getAttribute("LOGINID");
	if(id == null){
		
	%>
	<td><a href="login.jsp">● 로그인</a></td>
	<%
		}else {
	%>
	<td>
	<table>
		<tr><td>
	<font color="blue">환영합니다~<br/> <%= id %>님~</font><br/>
		</td></tr>
	</table>
	<a href="logout.do">● 로그아웃</a>
	</td>
	
	<%
		}
	%>
		</tr>
	</table>
</div>