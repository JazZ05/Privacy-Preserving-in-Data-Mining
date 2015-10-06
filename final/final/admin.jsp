<%@ page import="java.sql.*,database.*"%>

<html>

    <head>

	<title>Admin Login Page</title>
  <link rel="stylesheet" href='stylegreen.css' type="text/css" />
    </head>

    <body>

	<form>
		<p align="center" style="color:white;font-family:verdana;font-size:15px;font-weight:bold;">
	<% 

 String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
 String DB_URL = "jdbc:mysql://localhost/privacy";
String USER = "root";
 String PASS = "root";
 Connection con = null;
         String name= request.getParameter("name");

	String pass=request.getParameter("pass");		

	

	Statement st=null;

	ResultSet rs=null;

	String sql="select * from admin where name='"+name+"' AND pass='"+pass+"'";
	out.println(sql);

	try

	{

	   Class.forName("com.mysql.jdbc.Driver");
      con = DriverManager.getConnection(DB_URL,USER,PASS);
	    st=con.createStatement();

	    rs=st.executeQuery(sql);

	    if(rs.wasNull())

	     {
	    	out.println("OOP's!You are not authenticated person");
	    	%>
	    	<jsp:forward page="admin.jsp"/>
	    	<%
	     }
	    else
	    {

		session.setAttribute("name",name);

		 %>	

		<jsp:forward page="adminpage.jsp"/>

	    	<%

	             		    

	    }

	  
	}

	catch(SQLException se)

	{

		 se.printStackTrace();
	

	 }



	finally

	{
			rs.close();
	     st.close();

	      con.close();

	}

            %>

             </form>
			 </p><br>
			 <p class="paragraping" align="center"><a href="adminlog.jsp" class="paragrapin1g">Go Home</a></p>

       </body> 	

</html>