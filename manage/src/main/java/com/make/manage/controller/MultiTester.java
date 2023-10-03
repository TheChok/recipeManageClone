package com.make.manage.controller;

import java.sql.Connection;
import java.sql.DriverManager;

public class MultiTester {

	public static void main(String[] args) {
		Test1();
	}
	
	// Test - DB Connection//
		private static void Test1() {
			try {
				// jdbc:mysql://localhost:3305/recipeconnection?useSSL=false&amp;serverTimezone=Asia/Seoul
				// jdbc:mysql://localhost:3305/springbasic?serverTimezone=UTC
				
				String dbURL 		= "jdbc:mysql://localhost:3305/recipeconnection?serverTimezone=UTC";
				String dbID 		= "recipe";
				String dbPassword 	= "1q2w3e4r!";
				
				//			   com.mysql.cj.jdbc.Driver"
				Class.forName("com.mysql.cj.jdbc.Driver");
				
				Connection conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
				
				System.out.println(conn);
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
	
	
}
