package com.sagar.services;

import java.io.IOException;
import java.sql.*;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sagar.dbcon.ConnectDB;

/**
 * Servlet implementation class NewAawas
 */
public class NewAawas extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewAawas() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		
		
		
		String aname = request.getParameter("dname");
		String aemail = request.getParameter("demail");
		String apass = request.getParameter("dpass");
		String amob = request.getParameter("dmob");
		String address = request.getParameter("dddress");
		String acity = request.getParameter("dcity");
		String aregion = request.getParameter("dregion");
		String aadhar = request.getParameter("dadhar");

;
		
		try
		{
			Connection con = ConnectDB.connect();
			PreparedStatement ps1 = con.prepareStatement("insert into aawas_tbl values(?,?,?,?,?,?,?,?,?)");
			ps1.setInt(1, 0);
			ps1.setString(2, aname);
			ps1.setString(3, aemail);
			ps1.setString(4, apass);
			ps1.setString(5, amob);
			ps1.setString(6,address);
			ps1.setString(7, acity);
			ps1.setString(8, aregion);
			ps1.setString(9, aadhar);
			
			int i = ps1.executeUpdate();
			if(i==1)
			{
				response.sendRedirect("success.html");
			}
			else
			{
				response.sendRedirect("failure.html");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}

		
		
		
		
		
		
		
	}

}
