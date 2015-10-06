<%@ page import="java.sql.*,java.util.*, javax.sql.*, databaseconnection.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
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
if(a=="")
{
alert("Enter Username");
document.f.name.focus();
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
<table align="center" width="1020">
<tr bgcolor="#FFFFCC" style="font-family:verdana;font-size:12px;">
<td height="36">Patient-ID</td>
<td>Sex</td>
<td>Age</td>
<td>Zipcode</td>
</tr>
<%  
                 ArrayList list1 = new ArrayList();
	String dis=request.getParameter("des");
                  String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
 	String DB_URL = "jdbc:mysql://localhost/privacy";
	String USER = "root";
 	String PASS = "root";

	Connection con1 = null;
	Statement st1 = null;
	ResultSet rs1 = null;
	String pid=null, sex=null,des=null,age=null, zip=null;

	try{
		Class.forName("com.mysql.jdbc.Driver");
      con1= DriverManager.getConnection(DB_URL,USER,PASS);
	    st1=con1.createStatement();
		String sql1="select p_id,sex,age,zip from patient where disease like '" + '%' + dis + '%' + "'";
		rs1=st1.executeQuery(sql1);
		list1.add(sql1);
		
		 while(rs1.next())
		
       {
	   
			pid=rs1.getString(1);
		    
		    sex=rs1.getString(2);
		   age=rs1.getString(3);
		    zip=rs1.getString(4);
		    
			
			String s1= age;
			String s2 = zip;
			age="[";zip="";
			 int x;
			 x=Integer.parseInt(s1);
			if((x>=0)&&(x<=10))
		{
			age=age+"0-10]";         
		} 
				if((x>=0)&&(x<=10))
		{
			age=age+"0-10]";         
		}
				if((x>10)&&(x<=20))
		{
			age=age+"11-20]";         
		}
				if((x>=21)&&(x<=30))
		{
			age=age+"21-30]";         
		}
				if((x>=31)&&(x<=40))
		{
			age=age+"31-40]";         
		}
				if((x>=41)&&(x<=50))
		{
			age=age+"41-50]";         
		}
				if((x>=51)&&(x<=60))
		{
			age=age+"51-60]";         
		}
				if((x>=61)&&(x<=70))
		{
			age=age+"61-70]";         
		}
				if((x>=81)&&(x<=90))
		{
			age=age+"81-90]";         
		}
				if((x>=91)&&(x<=100))
		{
			age=age+"91-100]";         
		}
  
		   char[] c1 = s2.toCharArray();
		   		   
		   
		for(int i= 0; i< c1.length; i++)
		   {		  
		   if( i <= 2)
		   {
		   zip = zip + c1[i];
		   }
		   else
		   {
		   zip = zip + "*";
		   }		   
		   }
%>
  <tr style="font-family:verdana;font-size:12px;"> 
    
	
    <td> <font color="green"><%=pid%></font> </td>
    	<td> <font color="#804040"><%=sex%></font> </td>
	<td> <font color="red"><%=age%></font> </td>
   <td> <font color="green"><%=zip%></font> </td>
 
                  	
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
