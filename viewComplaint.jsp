<%@page import = "com.sagar.dbcon.*" %>
<%@page import = "com.sagar.services.*" %>
<%@page import = "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!--
Author: SagarKantilalBirhade
License: sagarbirhadencompany
License URL: https://instagram.com/sagar_birhade_402?igshid=NGExMmI2YTkyZg==
-->
<!DOCTYPE HTML>
<html>
<head>
<title>PM AAWAS YOJNA</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<script src="js/jquery.min.js"></script>
<!----webfonts--->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
<!---//webfonts--->  
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
</head>
<body>
<div id="wrapper">
     <!-- Navigation -->
        <nav class="top1 navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="addBill.html">PM AAWAS YOJNA</a>
            </div>
            <!-- /.navbar-header -->
            <ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
	        		<ul class="dropdown-menu">
						<li class="avatar">
							<a href="#">
								<img src="images/pic1.png" alt=""/>
								<div>New message</div>
								<small>1 minute ago</small>
							</a>
						</li>
						<li class="dropdown-menu-footer text-center">
							<a href="#">View all messages</a>
						</li>	
	        		</ul>
	      		</li>
			    <li class="dropdown">
	        		<a href="#" class="dropdown-toggle avatar" data-toggle="dropdown"><img src="images/1.png" alt=""/><span class="badge">9</span></a>
	        		<ul class="dropdown-menu">

						<li class="m_2"><a href="adminLogin.html"><i class="fa fa-lock"></i> Logout</a></li>	
	        		</ul>
	      		</li>
			</ul>
			
            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">


                         <li>
                            <a href="submitBill.jsp"><i class="fa fa-check-square-o nav_icon"></i>Submit Bills<span class="fa arrow"></span></a>


                        </li>
                        <li>
                            <a href="addPhoto.html"><i class="fa fa-check-square-o nav_icon"></i>Submit Photos of House<span class="fa arrow"></span></a>
                        </li>
                         <li>
                            <a href="#"><i class="fa fa-table nav_icon"></i>Complaint<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="addComplaint.html">Add Complaint</a>
                                </li>
                                <li>
                                    <a href="viewComplaint.jsp">View Complaints</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>  
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>
        <div id="page-wrapper">
        <div class="graphs">
	     <div class="xs">
	      	 <h3>view/Delete Complaints</h3>

    <div class="panel panel-warning" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">
				<div class="panel-body no-padding">
					<table class="table table-striped">
						<thead>
							<tr class="warning">
								<th>Complaint Id</th>
								<th>Aawas Id</th>
								<th>Complaint Description</th>
								<th>Delete</th>
							</tr>
						</thead>
						
			  <% 
			  	
			  	try
			  	{
			  		String email = User.getEmail();
			  		Connection con = ConnectDB.connect();
			  		PreparedStatement ps1 = con.prepareStatement("select * from complaint_tbl where cemail = ?");
			  		ps1.setString(1, email);
			  		ResultSet rs = ps1.executeQuery();
			  		while(rs.next())
			  		{
			  %>
			  		
			  		<tbody>
			  			<tr>
						    <td><%=rs.getInt("cid")%></td>
						    <td><%=rs.getInt("aawasid")%></td>
						    <td><%=rs.getString("cdesc")%></td>
						    <td><a href="deleteComplaint.jsp?cid=<%=rs.getInt("cid")%>">Delete</a></td>
						    
						</tr>
					</tbody>
													  			
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
	</div> 
   
	     
	     
	     
	     


	<div class="bs-example" data-example-id="form-validation-states-with-icons">
    <form>

      <div class="form-group has-success has-feedback">
        <div class="input-group">
        </div>
        <span id="inputGroupSuccess1Status" class="sr-only">(success)</span>
      </div>

      <div class="panel-footer">
		<div class="row">

		</div>
	 </div>
    </form>
  </div>
  </div>
  <div class="copy_layout">
      <p>Copyright © 2023 Modern. All Rights Reserved | Design by <a href="https://instagram.com/sagar_birhade_402?igshid=NGExMmI2YTkyZg==" target="_blank">Sagar Birhade</a> </p>
  </div>
  </div>
      </div>
      <!-- /#page-wrapper -->
   </div>
    <!-- /#wrapper -->
<!-- Nav CSS -->
<link href="css/custom.css" rel="stylesheet">
<!-- Metis Menu Plugin JavaScript -->
<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>
</body>
</html>
