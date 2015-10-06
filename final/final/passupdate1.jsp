<%@ page import="java.sql.*, javax.sql.*, databaseconnection.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Privacy-Preserving Data Mining</title>
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
var a = document.f.des.value;
if(a=="")
{
alert("Enter Disease Name");
document.f.des.focus();
return false;
}
}
</script>
</head>

<body>
<div id="outerwrapper">

<div id="head">
   <div id="logo">
      <div style="font-size:35px;color:white;font-family-verdana;padding:30px 40px 30px 20px;line-height:1.2em;font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Privacy-Preserving Data Mining</div>
   </div><!-- end of logo -->
   <div id="navigation">
      <div id="navbar_link">
        <ul>
           <li class="currentpage"><a href="doctorpage.jsp">Home</a></li>
           <li><a href="search.jsp">Search Disease</a></li>
           <li><a href="common.jsp">Common Data</a></li>
			<li><a href="changepass.jsp">Change Password</a></li>
			<li><a href="signout.jsp">Logout</a></li>
        </ul>
      </div>
      </div>
  </div>
<div id="innerwrapper">
<table align="center" width="500" style="border:1px solid #d2d2d2;">
<% 
               String name=request.getQueryString();
			System.out.println(name);
	String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
         	String DB_URL = "jdbc:mysql://localhost/privacy";
       	 String USER = "root";
        	String PASS = "root";
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
			
         try      
	{
	   Class.forName("com.mysql.jdbc.Driver");
      con = DriverManager.getConnection(DB_URL,USER,PASS);
	    st=con.createStatement();
	    String sql="select * from doctor where name='"+name+"'";
 	    rs=st.executeQuery(sql);

	    while(rs.next())
	     {
		%>
	<form action="passupdate2.jsp" name="f" method="post" onSubmit="return valid();">
	<tr>
	<td height="45" colspan="2" align="center"><font size="+1">Update Password Here</font></td>
	</tr>
	<tr>
	<td height="56" class="paragraping">Username:</td>
	<td><input type="text" name="name" class="input" value="<% out.println(rs.getString(2));%>" readonly></td>
	</tr>
	<tr>
	<td height="40" class="paragraping">Password:</td>
	<td><input type="text" name="pass" class="pass" value="<% out.println(rs.getString(3));%>"></td>
	</tr>
	<tr>
	<td height="45" class="paragraping"></td>
	<td><input type="submit" name="sub" value="Update" onClick="passupdate2.jsp"></td>
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
	</form>
	</table>  <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> 
</div>
<div id="footer">
<p align="center"><span style="float:center;">&nbsp;&nbsp;&nbsp;Privacy-Preserving Data Mining</span>
</p>
</div>
</div>
</body>
</html>
