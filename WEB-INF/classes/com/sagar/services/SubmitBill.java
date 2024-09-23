package com.sagar.services;
import com.sagar.services.User;

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
 * Servlet implementation class SubmitBill
 */
public class SubmitBill extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubmitBill() {
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
		
	
		
        int id = User.getBillid();

        // Check if aid parameter is not null and not empty
            try {

                Connection con = ConnectDB.connect();
                PreparedStatement ps1 = con.prepareStatement("update bill_tbl set status = ? where bid = ?");
                ps1.setString(1, "Submitted");
                ps1.setInt(2, id);
                int i = ps1.executeUpdate();
                if (i == 1) {
                	User.setAawasid(id);
                    response.sendRedirect("submittedGenBill.jsp");
                } else {
                    response.sendRedirect("userFailure.html");
                }
            } catch (NumberFormatException e) {
                e.printStackTrace();
            } catch (SQLException e) {
                e.printStackTrace();
            }	
	}

}
