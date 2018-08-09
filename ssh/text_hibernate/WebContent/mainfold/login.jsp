<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>登陆</title>
</head>
<script src="/text_hibernate/js/jquery-1.8.3.js"></script>
<script>
function login()
{
	var xmlhttp = new XMLHttpRequest();
	
	var data="member="+document.getElementById("member").value+"&&password="+document.getElementById("password").value;
	console.log(data);
	xmlhttp.onreadystatechange=function()
	{
		if(xmlhttp.readyState==4&&xmlhttp.status==200)
		{
			var text = xmlhttp.responseText;
			document.getElementById("messagebox").innerHTML=text;
			
		}
	}
	xmlhttp.open("post", "${pageContext.request.contextPath}/login/login", true);
	xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
	xmlhttp.send(data);
}
function loginjq()
{	var data="member="+$("#member").val()+"&&password="+$("#password").val();

	$.post(
	"${pageContext.request.contextPath}/login/login",
	data,
	function(text)
	{	console.log(text);
		top.document.write(text);
	},
	"text"
	)	
}

function loginjqajax()
{	var data1="member="+$("#member").val()+"&&password="+$("#password").val();
	console.log(data1);
	$.ajax(
	{ async:true,data:data1,dataType:"json",
	  success:function(data)
	  {	document=document.write(data);
		  var d = eval("("+data+")");
		  alert(d.src);
		  console.log(document);
		  
		//  top.location.href="${pageContext.request.contextPath}"+d.src;
	  },
		type:"post",
		url:"${pageContext.request.contextPath}/login/login"
	
	})
}
</script>
<body>
	<form>
		<table>
			<tr>
				<td>用户名：</td>
				<td><input type="text" name="member" id="member" />
				</td>
			</tr>
			<tr>
				<td>密码：</td>
				<td><input type="password" name="password" id="password" />
				</td>
			</tr>
		</table>
		<p id="messagebox" style="color: red;">${mes}</p>
		<input type="button" onclick="loginjq()" value="登陆" />
	</form>
</body>
</html>