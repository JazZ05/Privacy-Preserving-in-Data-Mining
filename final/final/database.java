package databaseconnection;
import java.sql.*;
public class database
{

static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
static final String DB_URL = "jdbc:mysql://localhost/privacy";
static final String USER = "root";
static final String PASS = "root";
static Connection conn = null;
public static Connection getconnection()
{
try
{
      Class.forName("com.mysql.jdbc.Driver");
      conn = DriverManager.getConnection(DB_URL,USER,PASS);
         }
catch(Exception e)
{
   //Handle errors for Class.forName
   e.printStackTrace();
}
return conn;
}
}
