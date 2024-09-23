
<%@page import = "com.sagar.dbcon.*" %>
<%@page import = "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PM AAWAS YOJNA</title>
</head>
<body>

<%
	try
	{
		String id = request.getParameter("cid");
		int did = Integer.parseInt(id);
		Connection con = ConnectDB.connect();
		PreparedStatement ps1 = con.prepareStatement("delete from complaint_tbl where cid = ?");
		ps1.setInt(1, did);
		int i = ps1.executeUpdate();
		if(i==1)
		{
			response.sendRedirect("viewComplaint.jsp");
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

%>


</body>
</html>