<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
	<div align="center">
	<table>
		<tr>
	<td><a href="memberEntry.do">�� ȸ�����</a>&nbsp;</td>
	<td><a href="memberAll.do">�� ȸ����� ��ȸ/����</a>&nbsp;</td>
	<td><a href="salesAll.do">�� ȸ������ ��ȸ</a>&nbsp;</td>
	<td><a href="index.jsp">�� Ȩ����</a>&nbsp;</td>
	
	<%
	String id = (String)session.getAttribute("LOGINID");
	if(id == null){
		
	%>
	<td><a href="login.jsp">�� �α���</a></td>
	<%
		}else {
	%>
	<td>
	<table>
		<tr><td>
	<font color="blue">ȯ���մϴ�~<br/> <%= id %>��~</font><br/>
		</td></tr>
	</table>
	<a href="logout.do">�� �α׾ƿ�</a>
	</td>
	
	<%
		}
	%>
		</tr>
	</table>
</div>