package com.sagar.services;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sagar.dbcon.ConnectDB;

/**
 * Servlet implementation class AddDealer
 */
public class AddDealer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddDealer() {
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
		
		
		
		String dname = request.getParameter("dname");
		String demail = request.getParameter("demail");
		String dpass = request.getParameter("dpass");
		String dmob = request.getParameter("dmob");
		String dregion = request.getParameter("dregion");
		String dcity = request.getParameter("dcity");
		
		try
		{
			Connection con = ConnectDB.connect();
			PreparedStatement ps1 = con.prepareStatement("insert into dealer_tbl values(?,?,?,?,?,?,?)");
			ps1.setInt(1, 0);
			ps1.setString(2, demail);
			ps1.setString(3, dpass);
			ps1.setString(4, dname);
			ps1.setString(5, dmob);
			ps1.setString(6, dregion);
			ps1.setString(7, dcity);
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
