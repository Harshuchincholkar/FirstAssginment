package com.harshada.jdbcprogram;
import java.sql.*;
import java.util.*;

public class NewProductsPS {
	public static void main(String[] args) {
		Connection con;
		PreparedStatement pst;
		//ResultSet rs;
		Scanner sc=new Scanner(System.in);
		int no;
		String nm,ty;
		float bal;
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://b1oehy5f91utjrdvigyq-mysql.services.clever-cloud.com:3306/b1oehy5f91utjrdvigyq?user=uhyfgotpc52j30ch&password=FO0oJToG78PfEZQXc0CJ");
			pst=con.prepareStatement("insert into accounts values(?,?,?,?)");
			
			System.out.print("Enter account number : ");
			no=sc.nextInt();
			sc.nextLine();
			System.out.print("Enter name : ");
			nm=sc.nextLine();
			System.out.print("Enter type : ");
			ty=sc.nextLine();
			System.out.print("Enter balance : ");
			bal=sc.nextFloat();
			
			pst.setInt(1, no);
			pst.setString(2, nm);
			pst.setString(3, ty);
			pst.setFloat(4, bal);
			pst.executeUpdate();
			
			System.out.println("Account inserted successfully");
			con.close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
	}

}
