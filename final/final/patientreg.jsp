<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
<head>
<% 
String driver = "com.mysql.jdbc.Driver";  
         String DB_URL = "jdbc:mysql://localhost/privacy";
        String USER = "root";
        String PASS = "root";
Connection con=null;
Statement st1 = null;
ResultSet rs=null;
PreparedStatement ps=null;
    String a=request.getParameter("pid");
	String b = request.getParameter("name");
	String c = request.getParameter("pass");
	String d = request.getParameter("sex");
	String e = request.getParameter("des"); 
	String f = request.getParameter("email");
	String g = request.getParameter("mobile");
	String h = request.getParameter("age");
	String i = request.getParameter("zip");
	
       try
                {	  
	   Class.forName(driver);
      con = DriverManager.getConnection(DB_URL,USER,PASS);
ps=con.prepareStatement("INSERT INTO patient(p_id,name,pass,sex,disease,email,mobile,age,zip)VALUES(?,?,?,?,?,?,?,?,?)");
			
ps.setString(1,a);
ps.setString(2,b);
ps.setString(3,c);
ps.setString(4,d);
ps.setString(5,e);
ps.setString(6,f);
ps.setString(7,g);
ps.setString(8,h);
ps.setString(9,i);

int s = ps.executeUpdate();

con.close();
ps.close();


}catch(Exception ex){

out.println("Error in connection : "+ex);

}

%>
       
