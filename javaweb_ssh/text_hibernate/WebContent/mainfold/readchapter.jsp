<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String s1;
int i=0;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
body {
	text-align: center;
	width: max-width;
	min-width: 1000px;
}

a {
	text-decoration: none;
}

.div3 {
	border: 1px solid #E0E0E0;
	padding: 10px 15px;
	color: #999;
	margin: 15px auto;
	width: 970px;
	font-size: 14px;
	text-align: left;
}

.div3>a {
	color: #333;
	padding: 0 5px;
	white-space: nowrap;
	font-size: 16px;
	line-height: 40px;
}

.div3>.now {
	color: #4169E1
}

.div3>a:hover {
	color: #4169E1
}

.div4 {
	width: 1000px;
	border: 3px solid #E0E0E0;
	margin: 30px auto;
	overflow: hidden;
	min-height: 800px;
}

.div4-header>h1 {
	color: #4169E1
}

.div4-header>span {
	color: #333;
	font-size: 13px;
}

.div4-body {
	width: 940px;
	text-align: left;
	margin-left: 40px;
}

.div4-body>a {
	border-bottom: 2px solid #E0E0E0;
	margin-top: 20px;
	margin-bottom: 20px;
	width: 32%;
	float: left;
}

.div4-body>a>span {
	font-weight: 700;
	font-size: 14px;
	border-left: 3px solid #4169E1;
	color: #666;
	padding-left: 10px;
}

.div4-body>a>span:hover {
	color: #4169E1
}
</style>
<script src="/text_hibernate/js/jquery-1.8.3.js"></script>
</head>
<body>
	<jsp:include page="/mainfold/div1-div2-fan.jsp"></jsp:include>
	<div class="div3">
		<a href="${pageContext.request.contextPath}/xiaoshuo/zhuye">杨小说网</a>>
		<a href="" class="now">${name}</a>
	</div>
	<div class="div4">
		<div class="div4-header">
			<h1>${name}</h1>
			<span>${auother}</span> <br>
			<br>
			<br>
			<br>
			<br>
			<br>
		</div>
		<div class="div4-body">
			<c:forEach items="${list}" var="s1">
				<a
					href="${pageContext.request.contextPath}/xiaoshuo/read/readchapter?name=${name}&&chaptername=${s1}"><span>第
						<%i=i+1;out.print(i);%> 章：${s1}</span>
				</a>
			</c:forEach>
		</div>

	</div>


























</body>
</html>