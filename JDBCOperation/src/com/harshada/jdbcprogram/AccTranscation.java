package com.harshada.jdbcprogram;
import java.util.*;
import java.sql.*;

	public class AccTranscation {
		public static void main(String[] args) {
			
			Scanner sc=new Scanner(System.in);
			Connection con;
			PreparedStatement pst;
			int accno;
			float amt;
			
			
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://b1oehy5f91utjrdvigyq-mysql.services.clever-cloud.com:3306/b1oehy5f91utjrdvigyq?user=uhyfgotpc52j30ch&password=FO0oJToG78PfEZQXc0CJ");
				
				System.out.print("enter accno : ");
				accno=sc.nextInt();
				System.out.print("enter amt : ");
				amt=sc.nextFloat();
				
				pst=con.prepareStatement("Update accounts set balance=balance+? where accno=?");
				
				pst.setFloat(1, amt);
				pst.setInt(2, accno);
				
				int cnt=pst.executeUpdate();
				
				if(cnt==1)
					System.out.println("Transaction successfully");
				else
					System.out.println("account not found");
				
				con.close();
			}
			catch(Exception e) {
				System.out.println(e);
			}
		}
	}



