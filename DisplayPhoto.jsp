
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import = "com.sagar.dbcon.*" %>
<%@page import = "java.sql.*" %>
<%@page import = "java.io.OutputStream" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Display Image</title>
</head>
<body>


<%
    String id = request.getParameter("id");
	System.out.println(id);
    Blob image = null;



    byte[] imgData = null;

    Statement stmt = null;

    ResultSet rs = null;

    try {
    	System.out.println("tryy wxcw");
        Connection  con = ConnectDB.connect();
        stmt = con.createStatement();
        rs = stmt.executeQuery("SELECT photo FROM photo_tbl WHERE id ='"+id+"'");
        System.out.println("if wxcw");
        if (rs.next()) {
        	System.out.println("if wxcw");
            image = rs.getBlob(1);
            imgData = image.getBytes(1, (int) image.length());

            // Set the content type to image/gif
            response.setContentType("image/gif");

            // Get the output stream to write image data to the response
            OutputStream o = response.getOutputStream();

            // Write the image data to the response
            o.write(imgData);
            o.flush();
            o.close();
        } else {
            out.println("Image not found for the given ID: " + id);
        }
    } catch (Exception e) {
        out.println("Unable To Display image: " + e.getMessage());
        e.printStackTrace();
    }
    
%>

</body>
</html>