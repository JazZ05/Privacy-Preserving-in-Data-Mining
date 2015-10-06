<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
    <head>
	<title>Delete Your Password</title>
	<link rel="stylesheet" href="css/style.css" type="text/css" />
    </head>
    <body background="Images/background.jpg">
	<font class="servlet">Delete the account</font><hr>
	<form name="del">
			
		
		<% 
                	String u=request.getQueryString();
	
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
	    String sql="delete from doctor where name='"+u+"'";
 	    st.executeUpdate(sql);
			out.println("The Username and password are successfully deleted");
		%>
		<jsp:forward page="chanepass.jsp"/>
		<%
	}catch(SQLException e1)
		{ 
		System.out.println("Database error"+e1.getMessage()); 
		}

	finally
	{
	     st.close();
	      con.close();
	}
            %>
			
             </form>
       </body> 	
</html>