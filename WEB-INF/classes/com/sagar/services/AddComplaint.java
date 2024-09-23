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
 * Servlet implementation class AddComplaint
 */
public class AddComplaint extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddComplaint() {
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
		
		
		String cdesc = request.getParameter("cdesc");
		String email = User.getEmail();
		String aawasid = request.getParameter("aid");
		int aid = Integer.parseInt(aawasid);

		try
		{
			Connection con = ConnectDB.connect();
			PreparedStatement ps1 = con.prepareStatement("insert into complaint_tbl values(?,?,?,?)");
			ps1.setInt(1, 0);
			ps1.setInt(2, aid);
			ps1.setString(3, email);
			ps1.setString(4, cdesc);
			
			int i = ps1.executeUpdate();
			if(i==1)
			{
				response.sendRedirect("successcom.html");
			}
			else
			{
				response.sendRedirect("userFailure.html");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
				
	}

}
