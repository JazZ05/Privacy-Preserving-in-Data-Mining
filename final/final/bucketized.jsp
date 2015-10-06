<%@ page import="java.sql.*,java.util.*, javax.sql.*, databaseconnection.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
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
      <div style="font-size:35px;color:white;font-family-verdana;padding:30px 40px 30px 20px;line-height:1.2em;font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Privacy-Preserving Data Mining</div>
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
<td height="36">Sex</td>

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


	Connection con1 = null;
	Statement st1 = null;
	ResultSet rs1 = null,rs=null;
	String pid=null,sex=null,disease=null,disease1=null,age1=null,zip1=null;
	int count=0,min=0;
	int c=0;
	int i=0,j=0,z=0;
	try{
 Class.forName("com.mysql.jdbc.Driver");
      con1= DriverManager.getConnection(DB_URL,USER,PASS);
		
	    st1=con1.createStatement();
		String sql="select disease,count(*) from patient group by disease order by count(*) desc;";
		
		rs=st1.executeQuery(sql);
		list1.add(sql);	
		while(rs.next())
	{
		c++;
	}
		min=c;
		rs.close();
		String des[][]=new String[c][2];
		
		rs=st1.executeQuery(sql);
		list1.add(sql);
		i=0;
		while(rs.next())
	{

		
		for(j=0;j<2;j++)
	{
		des[i][j]=rs.getString(j+1);
	}
		i++;	
	}		
			rs.close();
for(i=0;i<c;i++)
{
                   for(j=0;j<2;j++)
{
if(j==1)
{
count=Integer.parseInt(des[i][j]);
if(count<min)
min=count;
}
}
}  
String a[]=new String[min];                 
     Boolean flag=false;
		for(i=0;i<c;i++)
	{
               flag=false;
            disease1=null;
             for(j=0;j<2;j++)
            {
                if(j==0)
                {
		disease1=des[i][j];
                
                }
                else if(j==1)
                {
		                
                   flag=true;
        }
            }
            if(flag==true)
            {
	z=0;
           String sql1="select p_id from patient where disease="+"'"+disease1+"';";
           rs1=st1.executeQuery(sql1);
           list1.add(sql1);
          while(rs1.next())
{
z++;
}
rs1.close();
 rs1=st1.executeQuery(sql1);
           list1.add(sql1);
           while(rs1.next())
           {
pid=rs1.getString(1);
                                        int y=0;
y=z%min;
z--;
if(y==0)
{
 a[0]=a[0]+" "+pid;
}
else if(y%2==0)  
{ 
a[2]=a[2]+" "+pid;
}
else
{
a[1]=a[1]+" "+pid;
}
}
rs1.close();
}
}
   for(i=0;i<min;i++)
                {
                    String cha[]=a[i].split(" ");
                    for(j=1;j<cha.length;j++)
                    {
                        String sql1="select sex,age,zip,disease from patient where p_id="+"'"+cha[j]+"';";
                       rs1=st1.executeQuery(sql1);
           list1.add(sql1);
           while(rs1.next())
           {
               sex=rs1.getString(1);
                 disease=rs1.getString(4);
                 age1=rs1.getString(2);
                 zip1=rs1.getString(3);
                 %>
                 <tr style="font-family:verdana;font-size:12px;"> 
    
	<td> <font color="green"><%=sex%></font> </td>
        <td> <font color="green"><%=age1%></font> </td>
	<td> <font color="#804040"><%=zip1%></font> </td>
 <td> <font color="green"><%=disease%></font> </td>

</tr>
 <%
} 
    rs1.close();                }
                     %>
                 
             <tr>

<td>----------</td>
<td>----------</td>
<td>----------</td>
<td>----------</td>
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
<p align="center"><span style="float:center;">&nbsp;&nbsp;&nbsp;Privacy-Preserving Data Mining</span>
</p>
</div>
</div>
</body>
</html>
