package com.harshada.jdbcprogram;
import java.sql.*;
import java.util.*;

public class NewUpdateAcc {
	public static void main(String[] args) {
		Connection con;
		PreparedStatement pst;
		//ResultSet rs;
		Scanner sc=new Scanner(System.in);
		String id;
		String nm;
		String cop;
		Float prc;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		    con=DriverManager.getConnection("jdbc:mysql://b1oehy5f91utjrdvigyq-mysql.services.clever-cloud.com:3306/b1oehy5f91utjrdvigyq?user=uhyfgotpc52j30ch&password=FO0oJToG78PfEZQXc0CJ");
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}
	

}
