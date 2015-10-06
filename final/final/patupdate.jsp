<%@ page import="java.sql.*,databaseconnection.*"%>
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
      <div style="font-size:35px;color:white;font-family-verdana;padding:30px 40px 30px 20px;line-height:1.2em;font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

	  Privacy-Preserving  Data Mining</div>
   </div><!-- end of logo -->
   <div id="navigation">
      <div id="navbar_link">
        <ul>
           <li class="currentpage"><a href="patientpage.jsp">Home</a></li>
           <li><a href="view.jsp">Your Details</a></li>
           
			<li><a href="passchange.jsp">Change Password</a></li>
			<li><a href="signout.jsp">Logout</a></li>
        </ul>
      </div>
      </div>
  </div>
<div id="innerwrapper">
<% 
   	 String name=(String)session.getAttribute("name");
	String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
         	String DB_URL = "jdbc:mysql://localhost/privacy";
        	String USER = "root";
        	String PASS = "root";
	Connection con1=null;
	Statement st1=null;
	ResultSet rs1=null;
	String sql1="select * from patient where name='"+name+"'";
	try
	{
	   Class.forName("com.mysql.jdbc.Driver");
      con1 = DriverManager.getConnection(DB_URL,USER,PASS);
	    st1=con1.createStatement();
	    rs1=st1.executeQuery(sql1);
		while(rs1.next())
	     {
		 
		
		 
		 
			String s1=rs1.getString(2);
			%>
<table align="center" width="1020">
<tr>
<td width="364" valign="top">
<table align="center" width="336">
<tr>
<td height="44"><img src="img/arrow.jpg"></td>
<td width="328">&nbsp;&nbsp;<a href="view.jsp?<% out.println(rs1.getString(2));%>">Your Details</a></td>
</tr>
<tr>
<td height="42"><img src="img/arrow.jpg"></td>
<td width="328">&nbsp;&nbsp;<a href="passchange.jsp">Change Password</a></td>
</tr>
<tr>
<td height="49"><img src="img/arrow.jpg"></td>
<td width="328">&nbsp;&nbsp;<a href="signout.jsp">Logout</a></td>
</tr>
<tr>
<td width="328" height="268" colspan="2"><img src="img/list.gif" width="300"></td>
</tr>
</table>
</td>
<td width="644" valign="top">
<table align="center" width="500">

        <td width="80"  colspan="4" align="center" class="paragraping"><font color="#FF0000" size="+1">Welcome!&nbsp;&nbsp;<% out.println(rs1.getString(2));%></font></td>
		
		
       
		</tr>
	    	
 </table>
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
	     st1.close();
	      con1.close();
	}
            %>
<table align="center" width="500" style="border:1px solid #d2d2d2;">
<% 
              	
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
			
         try      
	{
	   Class.forName("com.mysql.jdbc.Driver");
      con = DriverManager.getConnection(DB_URL,USER,PASS);
	    st=con.createStatement();
	    String sql="select * from patient where name='"+name+"'";
 	    rs=st.executeQuery(sql);

	    while(rs.next())
	     {
		%>
	<form action="patupdate1.jsp" name="f" method="post" onSubmit="return valid();">
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
	<td><input type="submit" name="sub" value="Update" onClick="patupdate1.jsp"></td>
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
	</table>
</td>
</tr>
</table>   
</div>
<div id="footer">
<p align="center"><span style="float:center;">&nbsp;&nbsp;&nbsp;Privacy-Preserving  Data Mining</span>
</p>
</div>
</div>
</body>
</html>
