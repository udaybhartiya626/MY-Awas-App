<%@ page import="com.sagar.dbcon.*" %>
<%@ page import="com.sagar.services.*" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>
<head>
<title>PM AAWAS YOJNA</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f8f8f8;
    }

    .bill-container {
        max-width: 600px;
        margin: 50px auto;
        border-radius: 10px;
        overflow: hidden;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    }

    .bill-header {
        background-color: #007bff;
        color: #fff;
        text-align: center;
        padding: 15px 0;
        font-size: 24px;
    }

    .bill-details {
        padding: 20px;
    }

    .bill-details label {
        font-weight: bold;
    }

    .bill-table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }

    .bill-table th, .bill-table td {
        padding: 12px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }

    .bill-table th {
        background-color: #f2f2f2;
    }

    .bill-table td {
        background-color: #f9f9f9;
    }

    .bill-total {
        text-align: right;
        font-weight: bold;
        font-size: 18px;
        padding: 15px;
        background-color: #f2f2f2;
    }

    .bill-footer {
        text-align: center;
        padding: 20px;
        background-color: #007bff;
        color: #fff;
    }

    .back-button {
        text-align: center;
        margin-top: 20px;
    }

    .back-button a {
        display: inline-block;
        padding: 10px 20px;
        background-color: #007bff;
        color: #fff;
        text-decoration: none;
        border-radius: 4px;
        transition: background-color 0.3s ease;
    }

    .back-button a:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>

<div class="bill-container">
    <div class="bill-header">
        PM AAWAS YOJNA - Bill
    </div>

    <div class="bill-details">
        <table class="bill-table">
        
        <%
        	try
       		{

                int id = User.getBillid();

        		Connection con = ConnectDB.connect();
        		
        		PreparedStatement ps1 = con.prepareStatement("select * from bill_tbl where bid = ?");
        		ps1.setInt(1, id);
        		ResultSet rs = ps1.executeQuery();
        		if(rs.next())
        		{
        			
        %>
			  	
			            <tr>
			                <th>Bill ID</th>
			                <td><%=rs.getInt("bid")%></td>
			            </tr>
			            <tr>
			                <th>Aawas ID</th>
			                <td><%=rs.getInt("aawasid")%></td>
			            </tr>
			            <tr>
			                <th>Aawas Contact</th>
			                <td><%=rs.getString("aawasmob")%></td>
			            </tr>
			            <tr>
			                <th>Material 1</th>
			                <td><%=rs.getString("m1")%></td>
			            </tr>
			            <tr>
			                <th>Material 2</th>
			                <td><%=rs.getString("m2")%></td>
			            </tr>
			            <tr>
			                <th>Material 3</th>
			                <td><%=rs.getString("m3")%></td>
			            </tr>
			            <tr>
			                <th>Quantity 1</th>
			                <td><%=rs.getString("q1")%></td>
			            </tr>
			            <tr>
			                <th>Quantity 2</th>
			                <td><%=rs.getString("q2")%></td>
			            </tr>
			            <tr>
			                <th>Quantity 3</th>
			                <td><%=rs.getString("q3")%></td>
			            </tr>
			            <tr>
			                <th>Total Bill</th>
			                <td><%=rs.getString("total_bill")%></td>
			            </tr>      
        <%
        			
        		}
        	}
        	catch(Exception e)
       		{
        		e.printStackTrace();
        	}
        
        %>
        	        

        </table>
    </div>
    <div class="bill-footer">
        Your Bill Has Been Successfully Submitted
    </div>
    <br>
    <div class="bill-footer">
        Thank you for your business!
    </div>

    <div class="back-button">
        <a href="submitBill.jsp">Back</a>
    </div>
</div>

</body>>
