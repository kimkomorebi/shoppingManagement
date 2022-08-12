package member;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class MemberAllServlet
 */
@WebServlet("/memberAll.do")
public class MemberAllServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberAllServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("LOGINID");
		if(id == null) {
			response.sendRedirect("login.jsp?M=Y");
		}else {
			
		String select = "select custno, custname, phone, address, to_char(joindate, 'YYYY-MM-DD'), grade, city  from member_tbl_02";
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		ArrayList memberAll = new ArrayList();
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521/xe","hr","hr");
			stmt = con.createStatement();
			rs = stmt.executeQuery(select);
			while(rs.next()) {
				Member memb = new Member();
				memb.setCustno(rs.getInt(1));
				memb.setName(rs.getString(2));
				memb.setTel(rs.getString(3));
				memb.setAddr(rs.getString(4));
				memb.setDate(rs.getString(5));
				memb.setGrade(rs.getString(6));
				memb.setCode(rs.getString(7));
				memberAll.add(memb);
			}
		}catch(Exception e){
			
		}finally {
			try {
				con.close(); stmt.close(); rs.close();
			}catch(Exception e) {}
		}
		//조회 결과를 출력하는 JSP(memberAll.jsp)로 전환
		//1.Redirect, 2.Forward, 3. 둘 다
		request.setAttribute("ALL", memberAll);
		RequestDispatcher rd = request.getRequestDispatcher("memberAll.jsp");
		rd.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
