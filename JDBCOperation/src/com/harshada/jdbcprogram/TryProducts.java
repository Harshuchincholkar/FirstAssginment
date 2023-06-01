package com.harshada.jdbcprogram;

import java.sql.*;

public class TryProducts {
	public static void main(String[] args) {
		Connection con;
		Statement st;
		ResultSet rs;
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://b1oehy5f91utjrdvigyq-mysql.services.clever-cloud.com:3306/b1oehy5f91utjrdvigyq?user=uhyfgotpc52j30ch&password=FO0oJToG78PfEZQXc0CJ");
			st=con.createStatement();
			rs=st.executeQuery("select * from products");
			
			while(rs.next())
			{
				System.out.println(rs.getString("prodnm")+"  |  "+rs.getFloat("price"));
			}
			
			con.close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}

}
