package com.sagar.dbcon;
import java.sql.*;
public class ConnectDB
{
	static Connection con = null;
	public static Connection connect()
	{
		if(con == null)
		{
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/awas_db","root","");
				System.out.println("Connection Established");
				
			}
			catch(Exception e)
			{
				System.out.println("connected....!");
				e.printStackTrace();
			}
		}
		else
		{
			System.out.println("Something went Wrong");
		}
		return con;
	}

}

