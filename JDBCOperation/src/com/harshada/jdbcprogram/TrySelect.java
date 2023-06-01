package com.harshada.jdbcprogram;

import java.sql.*;

public class TrySelect {
	public static void main(String[] args) {
		Connection con;
		Statement st;
		ResultSet rs;
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://be3ofgral0h3uhedyadg-mysql.services.clever-cloud.com:3306/be3ofgral0h3uhedyadg?user=ulqyiujwgocf1bcm&password=e9cCEbntdKIl2FxKlo7B");
			st=con.createStatement();
			rs=st.executeQuery("select * from accounts");
			
			while(rs.next())
			{
				System.out.print(rs.getString("accnm")+" | ");
				System.out.println(rs.getFloat("balance"));
			}
			
			con.close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}

}
