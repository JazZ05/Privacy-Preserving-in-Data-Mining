<%@ page import="java.sql.*,databaseconnection.*"%>
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
var a = document.f.des.value;
if(a=="")
{
alert("Enter Disease Name");
document.f.des.focus();
return false;
}
}
</script>
</head>

<body>
<form action="dis.jsp" name="f" method="get" onSubmit="return valid();">
<div id="outerwrapper">

<div id="head">
   <div id="logo">
      <div style="font-size:35px;color:white;font-family-verdana;padding:30px 40px 30px 20px;line-height:1.2em;font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Privacy-Preserving Data Mining

	 </div>
   </div><!-- end of logo -->
   <div id="navigation">
      <div id="navbar_link">
        <ul>
           <li class="currentpage"><a href="doctorpage.jsp">Home</a></li>
           <li><a href="search.jsp">Search Disease</a></li>
           
			<li><a href="changepass.jsp">Change Password</a></li>
			<li><a href="signout.jsp">Logout</a></li>
        </ul>
      </div>
      </div>
  </div>
<div id="innerwrapper">
<table align="center" width="1020">
<tr>
<td width="364" valign="top">
<table align="center" width="336">

<tr>
<td height="44"><img src="img/arrow.jpg"></td>
<td width="328">&nbsp;&nbsp;<a href="search.jsp">Search Data</a></td>
</tr>

<tr>
<td height="42"><img src="img/arrow.jpg"></td>
<td width="328">&nbsp;&nbsp;<a href="changepass.jsp">Change Password</a></td>
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
<table align="center" width="609" height="125">
<tr>
<td height="22" colspan="3" align="center" bgcolor="#FFFFCC" class="paragraping">Search User Details</td>
</tr>
<tr>
<td width="168" height="95" class="paragraping">Search Disease</td>
<td width="300"><input type="text" name="des" value="" id="inputArea"></td>
<td width="125"><input type="submit" name="Sub" value="" class="search"></td>
</tr>
</table>
</td>
</tr>
</table>   
</div>
<div id="footer">
<p align="center"><span style="float:center;">&nbsp;&nbsp;&nbsp;Privacy-Preserving Data Mining</span>
</p>
</div>
</div>
</form>
</body>
</html>
