<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
    <head>
	<title>Data Owner Update</title>
		<link rel="stylesheet" href="css/style.css" type="text/css" />
    </head>
    <body background="Images/background.jpg"><font class="servlet">Password Update</font><hr>
	<form name="updateform" method="post" action="#"><font size="4">
			
		
		<% 
                	String u=request.getParameter("name");
			String p=request.getParameter("pass");
	
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
	    String sql="update doctor set pass='"+p+"' where name='"+u+"'";
 	    st.executeUpdate(sql);
		String s="";
	    if(s.equals(""))
	     {
		%>
			<jsp:forward page="changepass.jsp"/>
			<%
	    }
	    else
		System.out.println(s);
	   
	}catch(SQLException e1)	{ System.out.println("Database error"+e1.getMessage()); }

	finally
	{
	     st.close();
	      con.close();
	}
            %>
			
             </form>
       </body> 	
</html>