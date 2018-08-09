<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="cn.zhy.xiaoshuo.model.*"%>
<%! Novel novel;
	Chapter chapter;
	
%>
<%
	chapter=(Chapter)request.getAttribute("chapter");
	novel=(Novel)request.getAttribute("novel");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="">
</script>
<style type="text/css">
body {
	text-align: center;
	width: max-width;
	min-width: 1000px;
}

a {
	text-decoration: none;
}

.contain {
	width: 1000px;
	text-align: center;
	display: inline-block;
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
	text-align: center;
	background-color: #e8ebec;
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
	min-height: 800px;
}

.div4-body-content {
	width: 76%;
	margin: 60px auto;
	color: #333;
	font-size: 20px;
	font-weight: 550;
}

.end {
	display: inline-block;
	width: 80%;
}

.end>.left-button {
	float: left;
}

.end>.left-button1 {
	float: left;
}

.end>.right-button {
	float: right;
}

.end>.right-button1 {
	float: right;
}

.end>a>span {
	background-color: #4169E1;
	padding: 10px 15.5px;
	line-height: 30px;
}
;
</style>
<script src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
<script language="javascript">
var strs= new Array(); 
var page=1;
var pagemount;
var hangshu=50;
function getcontent()
{
var text=document.getElementById("novelcontent");
var content=document.getElementById("novelcontent").innerHTML;
var s1=content.replace(/\s+/g,"<br>");
strs=s1.split("<br>");  //字符分割 
pagemount=Math.ceil(strs.length/hangshu);
console.log(pagemount);
console.log(strs);
}
function showcontent()
{var text=document.getElementById("novelcontent");
text.innerHTML="";
if(page*hangshu>=strs.length)  //200  2100
{
	for(var i = (page-1)*hangshu;i<strs.length;i++)
	{
	text.innerHTML=text.innerHTML+"&emsp;&emsp;"+strs[i]+"<br>"
	}
}
else
{
	for(var i = (page-1)*hangshu;i<page*hangshu;i++)
	{
	text.innerHTML=text.innerHTML+"&emsp;&emsp;"+strs[i]+"<br>"
	}
}
}
function prepare()
{var middle=document.getElementById("middle");
	if(page==1)
	{
	alert("已经是首页了");
	return;
	}
	page--;
	middle.innerHTML="第"+page+"页,共"+pagemount+"页";
	showcontent();
	scrollTo(0, 150);
//	window.location.href="#top";
}
function next()
{	var middle=document.getElementById("middle");
	if(page==pagemount)
	{
	alert("本章已经结束！");
	return;
	}
	page++;
	middle.innerHTML="第"+page+"页,共"+pagemount+"页";
	showcontent();
	scrollTo(0,150);
//	window.location.href="#top";
}
function createbutton()
{	var chapter=<%= chapter.getChapternum() %>;
	var novelid=<%= novel.getNovel_id() %>;
	var chapternum=<%=chapter.getChapternum() %>
	var maxzhang=<%=request.getAttribute("mount")%>
	var chapter1,chapter2;
	
	
	var middle=document.getElementById("middle");
	var prezhang=document.getElementById("left-button");
	var nextzhang=document.getElementById("right-button");
	chapter=(parseInt(chapter));
	console.log(chapter+1);
	middle.innerHTML="第"+page+"页,共"+pagemount+"页";
	if(chapter!=1)
	{	
		chapter1=chapter-1;
		prezhang.setAttribute("href","${pageContext.request.contextPath}/xiaoshuo/read/nextchapter?page="+chapter1+"&&nameid="+novelid);
	}
	else
	prezhang.href="javascript:void(0)";
	if(chapter<maxzhang)
	{
	chapter2=chapter+1;
	nextzhang.href="${pageContext.request.contextPath}/xiaoshuo/read/nextchapter?page="+chapter2+"&&nameid="+novelid;
	}
	else
	{
	prezhang.href="javascript:void(0)";
	}
}
</script>
</head>
<body>
	<jsp:include page="/mainfold/div1-div2-fan.jsp"></jsp:include>

	<div class="contain">
		<div class="div3">
			<a href="${pageContext.request.contextPath}/xiaoshuo/zhuye">杨小说网
			</a>> <a
				href="${pageContext.request.contextPath}/xiaoshuo/read/readallchapter?name=${novel.getName()}"><%=novel.getName() %></a>>
			<a class="now"> <%=chapter.getName()%></a>
		</div>
		<div class="div4">
			<div class="div4-header">
				<h1><%=chapter.getName()%></h1>
				<span><%=novel.getAuother() %> </span>
			</div>
			<div class="div4-body">
				<h3 id="title" style="text-align: center"></h3>
				<div class="div4-body-content" id="novelcontent">
					<%=chapter.getContent() %>
				</div>
			</div>
			<div class="end">
				<a href="" class="left-button" id="left-button"><span>上一章</span>
				</a> <a href="javascript:void(0)" class="left-button1" id="left-button1"
					onclick="prepare()"><span>上一页</span>
				</a> <span>第<%= chapter.getChapternum() %>章_</span><span id="middle"></span>
				<a href="" class="right-button" id="right-button"><span>下一章</span>
				</a> <a href="javascript:void(0)" class="right-button1"
					id="right-button1" onclick="next()"><span>下一页</span>
				</a>
			</div>
			<script>
	getcontent()
	showcontent();
	createbutton();
	</script>

		</div>
	</div>


























</body>
</html>