package com.harshada.jdbcprogram;

import java.sql.*;

public class TryCustomers {
	public static void main(String[] args) {
		Connection con;
		Statement st;
		ResultSet rs;
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://b1oehy5f91utjrdvigyq-mysql.services.clever-cloud.com:3306/b1oehy5f91utjrdvigyq?user=uhyfgotpc52j30ch&password=FO0oJToG78PfEZQXc0CJ");
			st=con.createStatement();
			rs=st.executeQuery("select * from customers");
			
			while(rs.next())
			{
				System.out.println(rs.getString("custnm")+"  |  "+rs.getString("city")+"  |  "+rs.getString("paymode"));
			}
			
			con.close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}

}



