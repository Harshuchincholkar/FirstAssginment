package com.harshada.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.*;
/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id, ps;
		int ano=0;
		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		
		id=request.getParameter("uid");
		ps=request.getParameter("psw");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://b1oehy5f91utjrdvigyq-mysql.services.clever-cloud.com:3306/b1oehy5f91utjrdvigyq?user=uhyfgotpc52j30ch&password=FO0oJToG78PfEZQXc0CJ");
			
			pst=con.prepareStatement("Select * from users where userid=? and pswd=? and userstatus='active'");
			pst.setString(1, id);
			pst.setString(2, ps);
			rs=pst.executeQuery();
			if(rs.next()){
				System.out.println("correct");
				ano=rs.getInt("accno");
				HttpSession ses=request.getSession(true);
				ses.setAttribute("userid", id);
				ses.setAttribute("accno", ano);
;				response.sendRedirect("Customer.jsp");
			}
		}
		
		catch(Exception e) {
			System.out.println(e);
		}
	}
}

