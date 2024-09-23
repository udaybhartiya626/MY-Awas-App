package com.sagar.services;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sagar.dbcon.ConnectDB;

/**
 * Servlet implementation class AddBill
 */
public class AddBill extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddBill() {
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
		
        String aid = request.getParameter("aid");
        String amob = request.getParameter("amob");
        String m1 = request.getParameter("m1");
        String m2 = request.getParameter("m2");
        String m3 = request.getParameter("m3");
        String q1 = request.getParameter("q1");
        String q2 = request.getParameter("q2");
        String q3 = request.getParameter("q3");
        String abill = request.getParameter("abill");
        // Check if aid parameter is not null and not empty
        if (aid != null && !aid.isEmpty()) {
            try {
                int id = Integer.parseInt(aid);
                Connection con = ConnectDB.connect();
                PreparedStatement ps1 = con.prepareStatement("insert into bill_tbl values(?,?,?,?,?,?,?,?,?,?,?)");
                ps1.setInt(1, 0);
                ps1.setInt(2, id);
                ps1.setString(3, amob);
                ps1.setString(4, m1);
                ps1.setString(5, m2);
                ps1.setString(6, m3);
                ps1.setString(7, q1);
                ps1.setString(8, q2);
                ps1.setString(9, q3);
                ps1.setString(10, abill);
                ps1.setString(11, "pending");
                int i = ps1.executeUpdate();
                if (i == 1) {
                	User.setAawasid(id);
                    response.sendRedirect("genBill.jsp");
                } else {
                    response.sendRedirect("failure.html");
                }
            } catch (NumberFormatException e) {
                e.printStackTrace();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
		
		
	}

}
