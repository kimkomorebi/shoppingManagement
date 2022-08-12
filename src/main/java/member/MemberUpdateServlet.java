package member;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MemberUpdateServlet
 */
@WebServlet("/memberUpdate.do")
public class MemberUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public MemberUpdateServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	String memberUpdate(HttpServletRequest req) {
		String id = req.getParameter("ID");//번호
		String name = req.getParameter("NAME");//이름
		String tel = req.getParameter("TEL");//전화
		String addr = req.getParameter("ADDR");//주소
		String date = req.getParameter("DATE");//가입일
		date = date.substring(0,4)+date.substring(5, 7)+date.substring(8);
		String grade = req.getParameter("LEVEL");//등급
		String city = req.getParameter("CITY");//도시코드
		String update = "update member_tbl_02 set "+
		"custname=?, phone=?, address=?, joindate = to_date(?, 'YYYYMMDD'),"+
		"grade=?, city=? where custno=?";
		Connection con = null; PreparedStatement pstmt = null;
		String result = ""; //update 결과를 위한 변수 선언
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521/xe","hr","hr");
			pstmt = con.prepareStatement(update);
			pstmt.setString(1, name);
			pstmt.setString(2, tel);
			pstmt.setString(3, addr);
			pstmt.setString(4, date);
			pstmt.setString(5, grade);
			pstmt.setString(6, grade);
			pstmt.setInt(7, Integer.parseInt(id));
			pstmt.executeUpdate();//update실행
			result = "OK";
		}catch(Exception e) {
			result ="NOK";
			e.printStackTrace();
		}finally {
			try {
				con.close(); pstmt.close();
			}catch(Exception e) {}
		}
		return result;
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		String btn = request.getParameter("btn");
		if(btn.equals("수정")) {
			String result = memberUpdate(request);
			//페이지를 수정의 결과(updateResult.jsp)로 바꿈.
			response.sendRedirect("updateResult.jsp?R="+result);
		}else if(btn.equals("조회")) {
			response.sendRedirect("memberAll.do");
			//조회 서블릿을 호출한다.
		}
	}

}
