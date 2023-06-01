package com.harshada.jdbcprogram;

import java.sql.*;
import java.util.*;

public class SearchAccNumberPS {
	public static void main(String[] args) {
		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		String type;
		
		Scanner sc=new Scanner(System.in);
		
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://b1oehy5f91utjrdvigyq-mysql.services.clever-cloud.com:3306/b1oehy5f91utjrdvigyq?user=uhyfgotpc52j30ch&password=FO0oJToG78PfEZQXc0CJ");
			pst=con.prepareStatement("select * from accounts where acctype=?");
			
			System.out.print("Enter account type to search : ");
			type=sc.next();
			
			pst.setString(1, type);
			rs=pst.executeQuery();
			
			while(rs.next())
			{
				System.out.println("Name : "+rs.getString("accnm")+"  |  "+"Balance : "+rs.getFloat("balance"));
			}
			
				System.out.println("account does not exist");
			con.close();
			
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}

}


