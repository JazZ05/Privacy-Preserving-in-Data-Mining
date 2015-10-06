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
      <div style="font-size:35px;color:white;font-family-verdana;padding:30px 40px 30px 20px;line-height:1.2em;font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Privacy-Preserving  Data Mining </div>
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
<td>Sex</td>

<td>Age</td>
<td>Zipcode</td>
<td>Disease</td>
</tr>
<%  
 ArrayList list1 = new ArrayList();
	String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
         	String DB_URL = "jdbc:mysql://localhost/privacy";
        	String USER = "root";
        	String PASS = "root";
	Connection con1 = null, con2 = null;
	Statement st1 = null, st2 = null;
	ResultSet rs=null,rs1 = null, rs2 = null,rs3=null;
	String pid=null, sex=null,des=null,age=null, zip=null;
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
      con1 = DriverManager.getConnection(DB_URL,USER,PASS);
	    st1=con1.createStatement();
		age="";
		zip="";
		sex="";
		String sql="select p_id,disease from patient";
		String sql1="select age,count(*) from patient group by age";
		String sql2="select sex,count(*) from patient group by sex";
		String sql3="select zip,count(*) from patient group by zip";
		rs1=st1.executeQuery(sql1);
		list1.add(sql1);
		int x=0;
		while(rs1.next())
{
		x++;
}
		rs1.close();
		rs1=st1.executeQuery(sql1);
		list1.add(sql1);
		while(rs1.next())
{
		if(x>1)
{
		age=age+rs1.getString(1)+":"+rs1.getString(2)+",";
		x--;
}
else
{

		age=age+rs1.getString(1)+":"+rs1.getString(2)+".";
}
}
		rs2=st1.executeQuery(sql2);
		list1.add(sql2);
		 x=0;
		while(rs2.next())
{
		x++;
}
		rs2.close();
		rs2=st1.executeQuery(sql2);
		list1.add(sql2);
		while(rs2.next())
{
		if(x>1)
{
		sex=sex+rs2.getString(1)+":"+rs2.getString(2)+",";
		x--;
}
else
{

		sex=sex+rs2.getString(1)+":"+rs2.getString(2)+".";
}
}
		rs3=st1.executeQuery(sql3);
		list1.add(sql3);
		 x=0;
		while(rs3.next())
{
		x++;
}
		rs3.close();
		rs3=st1.executeQuery(sql3);
		list1.add(sql3);
		while(rs3.next())
{
		if(x>1)
{
		zip=zip+rs3.getString(1)+":"+rs3.getString(2)+",";
		x--;
}
else
{

		zip=zip+rs3.getString(1)+":"+rs3.getString(2)+".";
}
}
		rs3.close();	
		rs=st1.executeQuery(sql);
		list1.add(sql);
		while(rs.next())
{
		pid=rs.getString(1);
		des=rs.getString(2);
			
			
%>
  <tr style="font-family:verdana;font-size:12px;"> 
    
	<td> <font color="green"><%=sex%></font> </td>
    
    <td> <font color="green"><%=age%></font> </td>
	<td> <font color="#804040"><%=zip%></font> </td>
<td> <font color="green"><%=des%></font> </td>
	      	
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
