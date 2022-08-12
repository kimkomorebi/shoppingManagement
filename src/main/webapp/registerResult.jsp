<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String result = request.getParameter("R");
		if(result.equals("OK")){
	%>
	<script type="text/javascript">
		alert("회원등록이 완료되었습니다");
		location.href="index.jsp";
	</script>
	<%
		}else {
	%>
		<script type="text/javascript">
			alert("회원등록 중 문제가 발생했습니다.");
			location.href="index.jsp";
		</script>
	<%
		}
	%>
</body>
</html>