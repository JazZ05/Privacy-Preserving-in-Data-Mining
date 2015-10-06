<%@ page import="java.sql.*, javax.sql.*, databaseconnection.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Privacy-Preserving  Data Mining</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<link href="stylegreen.css" rel="stylesheet" type="text/css" />
<style type="text/css">

	#inputArea
	{
	    font-family: verdana;
	    font-size: 13px;
	    margin-bottom: 5px;
	    display: block;
	    padding: 4px;
	    width: 300px;
	}
  .submit {

	background:#FFFFFF url("img/submit.jpg") no-repeat left ;
	font-size:11px;
	font-weight:bold;
	width:94px;
	height:30px;
}
    </style>
<script language="JavaScript">
function valid()
{
var a = document.f.name.value;
var b = document.f.pass.value;
if(a=="")
{
alert("Enter Username");
document.f.name.focus();
return false;
}
if(b=="")
{
alert("Enter Password");
document.f.pass.focus();
return false;
}
}
</script>
</head>

<body>
<div id="outerwrapper">

<div id="head">
   <div id="logo">
      <div style="font-size:35px;color:white;font-family-verdana;padding:30px 40px 30px 20px;line-height:1.2em;font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Privacy-Preserving  Data Mining</div>
   </div><!-- end of logo -->
   <div id="navigation">
      <div id="navbar_link">
        <ul>
           <li class="currentpage"><a href="adminpage.jsp">Home</a></li>
           <li><a href="original.jsp">Original Data</a></li>
           <li><a href="generalized.jsp">Generalized Data</a></li>
	<li><a href="bucketized.jsp">Bucketized</a></li>
	 <li><a href="multiset.jsp">Multiset Data</a></li>
          	    <li><a href="prop.jsp">Proposed Algorithm</a></li>
			<li><a href="pass.jsp">Change Password</a></li>
			<li><a href="signout.jsp">Logout</a></li>
        </ul>
      </div>
      </div>
  </div>
<div id="innerwrapper">
<table align="center" width="713" style="border:1px solid #d2d2d2;">
	<tr>
	<td height="45" colspan="4" align="center"><font size="+1">Update Password Here</font></td>
	</tr>
	<tr bgcolor="#FFFFCC">
	<td width="202" height="31" class="paragraping">Username</td>
	<td width="201" class="paragraping">Password</td>
	<td width="92" class="paragraping">Update</td>
	<td width="198" class="paragraping">Delete</td>
	</tr>
<% 
    	String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
         String DB_URL = "jdbc:mysql://localhost/privacy";
        String USER = "root";
        String PASS = "root";
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	String sql="select * from admin";
	try
	{
	   Class.forName("com.mysql.jdbc.Driver");
      con = DriverManager.getConnection(DB_URL,USER,PASS);
	    st=con.createStatement();
	    rs=st.executeQuery(sql);
		while(rs.next())
	     {
		 
		
		 
		 
			String s1=rs.getString(1);
			%>
	
	
	<tr>
	
	<td class="paragraping"><% out.println(rs.getString(1));%></td>
	
	<td class="paragraping"><% out.println(rs.getString(2));%></td>
	
	<td><a onClick="update.jsp" href="update.jsp?<%=s1%>">Update</a></td>
	<td><a onClick="passdelete.jsp" href="passdelete.jsp?<%=s1%>">Delete</a></td>
	</tr>
		<%
			
	     }
		
	  
	}
	catch(SQLException e1)
	{
		out.println("Your given didn't match to our database");
		System.out.println(e1);
	
	 }

	finally
	{
	     st.close();
	      con.close();
	}
            %>
	
	</table> <br><br> <br><br>   <br><br>   <br><br>   <br><br>   <br><br>   <br><br>    
</div>
<div id="footer">
<p align="center"><span style="float:center;">&nbsp;&nbsp;&nbsp;Privacy-Preserving  Data Mining</span>
</p>
</div>
</div>
</body>
</html>
