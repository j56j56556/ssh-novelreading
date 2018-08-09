<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="cn.zhy.xiaoshuo.model.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%!//List<BenZhouTJ> list;  
BenZhouTJ b1;%>
<%//list = (List)request.getAttribute("list"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
body {
	text-align: center;
	width: max-width;
}

.contain {
	text-align: center;
	width: max-width;
}

a {
	text-decoration: none;
}

.div-iframe {
	width: 100%;
	position: fixed;
	z-index: 98;
	background-color: rgba(52, 52, 52, .5);
	height: 100%;
	padding: 200px 0;
}

.iframe-login {
	height: 125px;
	width: 300px;
	border: 2px #F60 solid;
	background-color: yellow;
	border-radius: 5px;
	box-shadow: 0px 0px 2px 0px;
}

.div-iframe>button {
	
}

.div3 {
	width: 725px;
	height: 500px;
	margin-top: 75px;
	float: left;
}

.div3-header {
	width: 100%;
	height: 50px;
	border-bottom: 1px solid #E0E0E0;
}

h2 {
	border-bottom: 3px solid #F60;
	height: 49px;
	padding-right: 5px;
	font-size: 26px;
	font-weight: 400;
	float: left;
	line-height: 50px;
	margin: 0;
	margin-top: -2px;
}

.div3-header-div1 {
	margin-left: 5px;
	float: left;
}

.div3-header-div1>a {
	color: #333;
	padding: 0 5px;
	white-space: nowrap;
	font-size: 16px;
	line-height: 50px;
}

.div3-header-div1>a:hover {
	color: #f60
}

.div3-bodyleft {
	width: 450px;
	float: left;
}

.div3-bodyleft-div1 {
	width: 100%;
	height: 250px;
}

.div3-bodyleft-div1-img {
	position: relative;
	z-index: 1;
}

.div3-bodyleft-div1-img>img {
	
}

.div3-bodyleft-div1-xiaxuank {
	width: 100%;
	line-height: 36px;
	height: 36px;
	border: 1px solid black;
	margin-top: -36px;
	position: relative;
	background-color: rgba(0, 0, 0, 0.3);
	color: white;
	z-index: 2;
}

.div3-bodyleft-div1-xiaxuank>span {
	line-height: 36px;
	color: white;
	font-weight: 700;
	font-size: 13px;
	float: left;
	margin-left: 20px;
}

.div3-bodyleft-div1-xiaxuank-div {
	float: right;
	margin-right: 20px;
}

.div3-bodyleft-div1-xiaxuank>div>em {
	width: 25px;
	height: 6px;
	display: inline-block;
	overflow: hidden;
	background: #fff;
	cursor: default;
	margin: 2 5px;
}

.div3-bodyleft-div2 {
	width: 100%;
	height: 200px;
	border: 1px solid black
}

.div3-bodyleft-div2-dl>dt {
	height: 45px;
	line-height: 45px;
	border-bottom: 1px solid #E0E0E0;
	float: left;
	isplay: inline;
	width: 24.5%;
	text-align: center;
	color: #666
}

.div3-bodyleft-div2-dl>.now {
	box-shadow: 1px -3px 5px rgba(0, 0, 0, 0.2);
	border: 1px solid #E0E0E0;
	border-bottom: 0;
	border-top: 3px solid #F60;
	height: 43px;
	line-height: 40px;
}

.div3-bodyleft-div2-dl2-dd {
	margin: 0;
	display: none;
}

.div3-bodyleft-div2-dl2-dd-now {
	margin: 0;
	display: block;
}

.div3-bodyleft-div2-dl2-dd-now>ul {
	padding: 10px 0 0;
	float: left;
	width: 150px;
	margin: 0;
}

.div3-bodyleft-div2-dl2-dd-now>ul>li {
	list-style: none;
}

.div3-bodyleft-div2-dl2-dd-now>ul>li>a {
	line-height: 18px;
	font-size: 13px;
}

.div3-bodyleft-div2-dl2-dd-now>ul>li>span {
	width: 18px;
	height: 18px;
	text-align: center;
	background: #999;
	color: #fff;
	margin: 0 10px 0 0;
	display: inline-block;
}

.div3-bodyright {
	width: 250px;
	height: 450px;
	float: right;
	text-align: left;
}

.div3-bodyright>a {
	margin-top: 4px;
	display: block;
}

.div4 {
	width: 245px;
	height: 500px;
	margin-top: 75px;
	float: left;
	margin-left: 40px;
	text-align: left;
}

.div4-header {
	width: 100%;
	height: 50px;
	border-bottom: 1px solid #E0E0E0;
}

.div4-header>h2 {
	border-left: 3px solid #F60;
	border-bottom: none;
}

.div4-body {
	width: 100%;
	height: 450px;
}

.div4-body>ul>li {
	border-bottom: 1px dotted #ddd;
	line-height: 18px;
	padding: 7px 0;
	color: #999;
	text-indent: 5px;
}

.div5 {
	width: 475px;
	height: 450px;
	float: left;
}

.div5-header-div1 {
	margin-left: 5px;
	float: left;
}

.div5-header-div1>a {
	color: #333;
	padding: 0 5px;
	white-space: nowrap;
	font-size: 16px;
	line-height: 50px;
}

.div5-header-div1>.now {
	color: #f60;
}

.div5-header-div1>a:hover {
	color: #f60
}

.div5-header {
	width: 100%;
	height: 50px;
	border-bottom: 1px solid #E0E0E0;
}

.div5-body {
	width: 100%;
	height: 400px;
	text-align: left;
}

.div5-body-content {
	width: 100%;
	height: 31%;
	border-bottom: 2px solid #E0E0E0;
	overflow: hidden;
}

.div5-body-content>a>span:hover {
	color: #f60;
}

.div5-body-content>a>img {
	width: 85px;
	height: 110px;
	border-right: 2px solid #E0E0E0;
	box-shadow: 0px 0px 2px 0px black;
	float: left;
	margin-left: 20px;
	margin-top: 7px;
}

.div5-body-content>a>span {
	width: 350px;
	height: 95px;
	float: left;
	overflow: hidden;
	margin-left: 10px;
	margin-top: 20px;
	color: #666;
	font-size: 14px;
}

.div5-body-content>a>span:hover {
	color: #f60;
}

.div5-body-bottom {
	background-color: rgba(0, 0, 0, 0.3);
	width: 100%;
	height: 22px;
	margin-top: -23px;
}

.div5-body-bottom>em {
	width: 25px;
	height: 6px;
	display: inline-block;
	overflow: hidden;
	background: #fff;
	cursor: default;
	margin: 2 5px;
}

.div6 {
	width: 250px;
	height: 450px;
	float: left;
	margin-left: 18px;
}

.div6-header {
	width: 100%;
	height: 50px;
	border-bottom: 1px solid #E0E0E0;
}

.div6-body {
	width: 100%;
	height: 400px;
	border: 1px solid black;
}

.div7 {
	width: 250px;
	height: 450px;
	float: left;
	margin-left: 18px;
}

.div7-header {
	width: 100%;
	height: 50px;
	border-bottom: 1px solid #E0E0E0;
}

.div7-body {
	width: 100%;
	height: 400px;
	border: 1px solid black;
}

.div8 {
	width: 80%;
	height: 450px;
	float: left;
	margin-left: 18px;
}
</style>
<script src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
<script>
var clock;
var images = new Array();
var imgbox=new Array();	
function loadimg()
{
for(n=0;n<6;n++)
{imgbox[n]=new Array();}
	for(var i=1;i<=6;i++)
	{
		for(var j = 1;j<=3;j++)
		{imgbox[i-1][j-1]="${pageContext.request.contextPath}/img/img"+i+"/"+j+".jpg";
		images[i*j]=new Image();
		images[i*j].src=imgbox[i-1][j-1];
		console.log(images[i*j]);
		}
	}	
}
function loginiframe()
{
	$("#div-iframe").css("visibility","visible");
}
loadimg();
</script>
<script src="${pageContext.request.contextPath}/js/xiaoshuo.js"></script>
</head>
<body>

	<jsp:include page="/mainfold/div1-div2-fan.jsp"></jsp:include>
	<div class="contain">
		<div class="div3--div4" style="display: inline-block; width: 1050px;">
			<div class="div3">
				<div class="div3-header">
					<h2>本周推荐</h2>
					<div class="div3-header-div1">
						<a class="now" href="javascript:void(0)" style="color: #f60"
							onmouseover="mainlk(0)">秋天</a> | <a href="javascript:void(0)"
							onmouseover="mainlk(1)">夏天</a> | <a href="javascript:void(0)"
							onmouseover="mainlk(2)">春天</a> | <a href="javascript:void(0)"
							onmouseover="mainlk(3)">冬天</a> | <a href="javascript:void(0)"
							onmouseover="mainlk(4)">海景</a> | <a href="javascript:void(0)"
							onmouseover="mainlk(5)">宇宙</a>
					</div>
				</div>
				<div class="div3-bodyleft">
					<div class="div3-bodyleft-div1" id="div3-bodyleft-div1">
						<a class="div3-bodyleft-div1-img" id="div3-bodyleft-div1-img"
							href="javascript:void(0)"> <img onclick="mainlkimg()"
							src="${pageContext.request.contextPath}/img/img1/1.jpg" /> </a>
						<div class="div3-bodyleft-div1-xiaxuank"
							id="div3-bodyleft-div1-xiaxuank">
							<span>风景 </span>
							<div class="div3-bodyleft-div1-xiaxuank-div">
								<em onmouseover="emk(0)" style="background-color: #f60;"></em> <em
									onmouseover="emk(1)"></em> <em onmouseover="emk(2)"></em>
							</div>
						</div>
					</div>
					<div class="div3-bodyleft-div2">
						<dl class="div3-bodyleft-div2-dl">
							<dt class="now" onmouseover="dldtk(0)">全站订阅周榜</dt>
							<dt onmouseover="dldtk(1)">新书订阅周榜</dt>
							<dt onmouseover="dldtk(2)">盖章周榜</dt>
							<dt onmouseover="dldtk(3)">红包周榜</dt>
						</dl>
						<dl class="div3-bodyleft-div2-dl2">
							<dd class="div3-bodyleft-div2-dl2-dd-now">
								<ul>
									<li><span>1</span><a>侦探</a>
									</li>
								</ul>
								<ul>
									<li><span>2</span><a>侦探</a>
									</li>
								</ul>
								<ul>
									<li><span>3</span><a>侦探</a>
									</li>
								</ul>
							</dd>
							<dd class="div3-bodyleft-div2-dl2-dd">
								<ul>
									<li><span>1</span><a>推理</a>
									</li>
								</ul>
								<ul>
									<li><span>2</span><a>推理</a>
									</li>
								</ul>
								<ul>
									<li><span>3</span><a>推理</a>
									</li>
								</ul>
							</dd>
							<dd class="div3-bodyleft-div2-dl2-dd">
								<ul>
									<li><span>1</span><a>解密</a>
									</li>
								</ul>
								<ul>
									<li><span>2</span><a>解密</a>
									</li>
								</ul>
								<ul>
									<li><span>3</span><a>解密</a>
									</li>
								</ul>
							</dd>
							<dd class="div3-bodyleft-div2-dl2-dd">
								<ul>
									<li><span>1</span><a>灵异</a>
									</li>
								</ul>
								<ul>
									<li><span>2</span><a>灵异</a>
									</li>
								</ul>
								<ul>
									<li><span>3</span><a>灵异</a>
									</li>
								</ul>
							</dd>
						</dl>
					</div>
				</div>
				<div class="div3-bodyright">
					<p style="text-align: center;">推荐书籍</p>
					<c:forEach items="${list}" var="b1">
						<a
							href="${pageContext.request.contextPath}/xiaoshuo/read/readallchapter?name=${b1.getName()}">
							<span
							style="font-size: 20px; color: #330; line-height: 45px; font-weight: 400;">${b1.getName()}
						</span><br> <span
							style="font-size: 13px; color: #666; line-height: 23px;">${b1.getAuother()}</span>
						</a>
					</c:forEach>
				</div>
			</div>
			<div class="div4">
				<div class="div4-header">
					<h2>新闻公告</h2>
				</div>
				<div class="div4-body">
					<ul>
						<li>羡长江之无穷</li>
						<li>挟飞仙以遨游</li>
						<li>抱明月而长终</li>
						<li>知不可乎骤得</li>
						<li>托遗响于悲风</li>
						<li></li>
						<li></li>

					</ul>
					<div
						style="width:100%;height:192px;background-image:url(${pageContext.request.contextPath}/img/head-img/body.jpg);background-size:cover;">
					</div>
				</div>
			</div>
		</div>
		<div class="div5--div6--div7"
			style="display: inline-block; width: 1050px; margin-top: 75px;">
			<div class="div5" id="div5">
				<div class="div5-header">
					<h2>收录书籍</h2>
					<div class="div5-header-div1">
						<a class="now" href="javascript:void(0)"
							onmouseover="divheadmenu5(0)">三毛</a> | <a class=""
							href="javascript:void(0)" onmouseover="divheadmenu5(1)">刘慈欣</a> |
						<a class="" href="javascript:void(0)"
							onmouseover="divheadmenu5(2)">七堇年</a>
					</div>
				</div>
				<div class="div5-body" id="div5-body"></div>
				<div class="div5-body" id="div5-body"></div>
				<div class="div5-body" id="div5-body"></div>
				<script>		
		</script>
				<div class="div5-body-bottom">
					<em onmouseover="divemk5(0)" style="background-color: #f60;"></em>
					<em onmouseover="divemk5(1)"></em> <em onmouseover="divemk5(2)"></em>
				</div>
			</div>
			<div class="div6">
				<div class="div6-header">
					<h2>新书榜</h2>
				</div>
				<div class="div6-body"></div>
			</div>
			<div class="div7">
				<div class="div7-header">
					<h2>全站点击榜</h2>
				</div>
				<div class="div7-body"></div>
			</div>
		</div>
		<div class="div8"></div>
	</div>


















</body>
</html>