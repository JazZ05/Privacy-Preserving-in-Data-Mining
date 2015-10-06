<%@ page language="java" import="java.sql.*,databaseconnection.*" errorPage="Error.jsp"%>
<html>
<head>
<title>Privacy-Preserving  Data Mining</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<link href="stylegreen.css" rel="stylesheet" type="text/css" />
<script language="JavaScript">
function valid()
{
var a = document.f.name.value;
var b = document.f.pass.value;
var c = document.f.qua.value;
var d = document.f.des.value;
var e = document.f.email.value;
var f = document.f.mobile.value;
var g = document.f.sal.value;
var h = document.f.gender.value;

if(a=="")
{
alert("Enter Your Name");
document.f.name.value;
return false;
}
if(!isNaN(a))
{
alert("Enter Character Only");
document.f.name.value;
return false;
}
if(b=="")
{
alert("Enter Your Password");
document.f.pass.value;
return false;
}
if(c=="")
{
alert("Enter Your Qualification");
document.f.qua.value;
return false;
}
if(d=="")
{
alert("Enter Your Designation");
document.f.des.value;
return false;
}
if (e.value == "")
{
window.alert("Please enter a valid e-mail address.");
e.focus();
return false;
}
if (e.value.indexOf("@", 0) < 0)
{
window.alert("Please enter a valid e-mail address.");
e.focus();
return false;
}
if (e.value.indexOf(".", 0) < 0)
{
window.alert("Please enter a valid e-mail address.");
e.focus();
return false;
}
if(f=="")
    {
        alert("Please enter the Mobile number");
			document.f.mobile.focus();
        return false;
    }
	if(isNaN(f))
    {
        alert("Please enter the Correct Mobile number");
			document.f.mobile.focus();
        return false;
    }
	 if (f.length!=10)
           {
                alert("Mobile should have 10 numbers");
				document.f.mobile.focus();
                return false;
           }
	
if(g=="")
{
alert("Enter Your Salary");
document.f.sal.value;
return false;
}	
if(isNaN(g))
{
alert("Salary:Integer Only");
document.f.sal.value;
return false;
}		   

if(h=="")
{
alert("Enter Your Gender (Male or Female)");
document.f.gender.value;
return false;
}		
						   
return true;
}
</script>
</head>

<body>
<form name="f" method="post" action="doctorreg.jsp" onSubmit="return valid();">
<div id="outerwrapper">

<div id="head">
    
   <div id="logo">
      <div style="font-size:35px;color:white;font-family-verdana;padding:30px 40px 30px 20px;line-height:1.2em;font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Privacy-Preserving Data Mining </div>
   </div><!-- end of logo -->
   <div id="navigation">
      <div id="navbar_link">
        <ul>
           <li class="currentpage"><a href="index.html">Home</a></li>
           <li><a href="docreg.jsp">Doctor Register</a></li>
           <li><a href="patreg.jsp">Patient Register</a></li>
		    <li><a href="doclog.jsp">Doctor Login</a></li>
			 <li><a href="patlog.jsp">Patient Login</a></li>
           <li><a href="adminlog.jsp">Admin Login</a></li>
        </ul>
      </div>
      </div>
  </div>
<div id="innerwrapper">
<table align="center" width="1015">
<tr>
<td width="364" height="693" valign="top">
<table align="center" width="336">
<tr>
<td height="44"><img src="img/arrow.jpg"></td>
<td width="328">&nbsp;&nbsp;<a href="docreg.jsp">Doctor Register</a></td>
</tr>
<tr>
<td height="44"><img src="img/arrow.jpg"></td>
<td width="328">&nbsp;&nbsp;<a href="patreg.jsp">Patient Register</a></td>
</tr>
<tr>
<td height="44"><img src="img/arrow.jpg"></td>
<td width="328">&nbsp;&nbsp;<a href="doclog.jsp">Doctor Login</a></td>
</tr>
<tr>
<td height="42"><img src="img/arrow.jpg"></td>
<td width="328"><a href="patlog.jsp">&nbsp;&nbsp;Patient Login</a></td>
</tr>
<tr>
<td height="49"><img src="img/arrow.jpg"></td>
<td width="328"><a href="adminlog.jsp">&nbsp;&nbsp;Admin Login</a></td>
</tr>
<tr>
<td width="328" height="268" colspan="2"><img src="img/list.gif" width="300"></td>
</tr>
</table>
</td>
<td width="639" valign="top">
<table align="center" width="600">
<tr>
<td class="paragraping1" colspan="2" valign="top" align="center"><font color="#FF0000" size="4">Doctor Register Here</font></td>
</tr>
<tr>
<td height="42" colspan="2"><br></td>
</tr>
<tr>
<td width="176" height="48">Doctor-ID:</td>
<td width="412"><input id="inputArea" type="text" name="did" value="<%= (int) (Math.random() * 10000) %>"/></td>
</tr>
<tr>
<td width="176" height="48">Username:</td>
<td width="412"><input id="inputArea" type="text" name="name"/></td>
</tr>
<tr>
<td height="45">Password:</td>
<td><input id="inputArea" type="password" name="pass"/></td>
</tr>
<tr>
<td height="40">Qualification:</td>
<td><input id="inputArea" type="text" name="qua"/></td>
</tr>
<tr>
<td height="49">Designation:</td>
<td><input id="inputArea" type="text" name="des"/></td>
</tr>
<tr>
<td height="47">Email:</td>
<td><input id="inputArea" type="text" name="email"/></td>
</tr>
<tr>
<td height="53">Mobile:</td>
<td><input id="inputArea" type="text" name="mobile"/></td>
</tr>
<tr>
<td height="46">Salary:</td>
<td><input id="inputArea" type="text" name="sal"/></td>
</tr>
<tr>
<td height="43">Gender:</td>
<td><input id="inputArea" type="text" name="gender"/></td>
</tr>
<tr>
<td height="39"></td>
<td><input type="submit" name="sub" value="" class="submit"/>&nbsp;&nbsp;<input type="reset" name="clear" value="" class="clear"></td>
</tr>
<tr>
<td class="paragraping" colspan="2" align="center"><font size="4"><%
				String message=request.getParameter("message");
	if(message!=null && message.equalsIgnoreCase("success"))
					{
					out.println("<font color='Green'>Your Information has beed Successfully inserted</font>");
			}
						%></font></td>
</tr>
</table>
</td>
</tr>
</table>   
</div>
<div id="footer">
<p align="center"><span style="float:center;">&nbsp;&nbsp;&nbsp;Privacy-Preserving  Data Mining</span>
</p>
</div>
</div>
</form>
</body>
</html>