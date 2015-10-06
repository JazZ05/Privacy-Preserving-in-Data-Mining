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
      <div style="font-size:35px;color:white;font-family-verdana;padding:30px 40px 30px 20px;line-height:1.2em;font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Privacy-Preserving  Data Mining</div>
   </div><!-- end of logo -->
   <div id="navigation">
      <div id="navbar_link">
         <ul>
           <li class="currentpage"><a href="adminpage.jsp">Home</a></li>
           <li><a href="pass.jsp">Change Password</a></li>
		   <li><a href="navi.jsp">Doctor Details</a></li>
			<li><a href="signout.jsp">Logout</a></li>
        </ul>
      </div>
      </div>
  </div>
<div id="innerwrapper">
<table align="center" width="1020">
<tr bgcolor="#FFFFCC" style="font-family:verdana;font-size:12px;">
<td height="36">Patient-ID</td>
<td>Name</td>
<td>Password</td>
<td>SEX</td>
<td>DISEASE</td>
<td>Email</td>
<td>Mobile</td>
<td>Age</td>
<td>Zipcode</td>
<td>Delete</td>
</tr>
<% 
	String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
         String DB_URL = "jdbc:mysql://localhost/privacy";
        String USER = "root";
        String PASS = "root";
	Connection con1 = null;
	Statement st1 = null;
	ResultSet rs1 = null;
	String pid=null, name=null, pass=null, email=null,mobile=null,des=null, age=null, sex=null, zip=null;

	try{
		Class.forName("com.mysql.jdbc.Driver");
      con1 = DriverManager.getConnection(DB_URL,USER,PASS);
	    st1=con1.createStatement();
		String sql1="select p_id,name,pass,sex,disease,email,mobile,age,zip from patient order by p_id";
		rs1=st1.executeQuery(sql1);
		
		 while(rs1.next())
		
       {
	   
			pid=rs1.getString(1);
		    name=rs1.getString(2);
		    pass="*";
		sex= rs1.getString(4);
		des=rs1.getString(5);
		    email=rs1.getString(6);
			mobile=rs1.getString(7);
		    age=rs1.getString(8);
		    zip=rs1.getString(9);
		    
			
		   
%>
  <tr style="font-family:verdana;font-size:12px;"> 
    <td> <font color="green"><%=pid%></font> </td>
	<td> <font color="green"><%=name%></font> </td>
    <td> <font color="green"><%=pass%></font> </td>
    <td> <font color="green"><%=sex%></font> </td>
	<td> <font color="green"><%=des%></font> </td>
	<td> <font color="red"><%=email%></font> </td>
    <td> <font color="red"><%=mobile%></font> </td>
    <td> <font color="red"><%=age%></font> </td>
	<td> <font color="red"><%=zip%></font> </td>
 
        <%
      
String pid1=rs1.getString(1);

%>
      <td> <a href="patdelete.jsp?<%=pid%>">Delete</a></td>
      	
    </tr>
<%
	   }
	 
	 }
	   catch(Exception e2)
	   {
	     out.println(e2.getMessage());
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
