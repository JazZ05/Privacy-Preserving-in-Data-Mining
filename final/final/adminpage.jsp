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
<tr>
<td width="364" valign="top">
<table align="center" width="336">
<tr>
<td height="44"><img src="img/ass.png"></td>
<td >&nbsp;&nbsp;<a href="original.jsp"><img src="img/original.JPG"></a></td>
<td height="44"><img src="img/ass.png"></td>
<td >&nbsp;&nbsp;<a href="generalized.jsp"><img src="img/gen.JPG"></a></td>
</tr>
<tr>
<td height="44"><img src="img/ass.png"></td>
<td >&nbsp;&nbsp;<a href="bucketized.jsp"><img src="img/buc.JPG"></a></td>
<td height="44"><img src="img/ass.png"></td>
<td >&nbsp;&nbsp;<a href="multiset.jsp"><img src="img/multi.JPG"></a></td>
</tr>
<tr>
<td height="44"><img src="img/ass.png"></td>
<td >&nbsp;&nbsp;<a href="prop.jsp">Proposed Algorithm</a></td>

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
</body>
</html>
