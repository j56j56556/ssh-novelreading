<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
a {
	text-decoration: none;
}

.div1 {
	width: max-with;
	min-width: 1000px;
	height: 100px;
	text-align: center;
	background-color: rgba(255, 255, 255, 1);
	margin-top: -8px;
	position: relative;
	z-index: 5
}

.div1-box {
	width: 75%;
	height: 60%;
	display: inline-block;
	margin: 15px;
}

.div1-div1 {
	width: 20%;
	min-width: 183px;
	min-heigth: 76px;
	height: 100%;
	float: left;
	background-image:
		url(${pageContext.request.contextPath}/img/sanmao/head.png);
	background-size: cover;
}

.div1-div2 {
	width: 25%;
	height: 70%;
	float: left;
	margin-top: 8px;
	text-align: right;
}

.div1-div2-form {
	width: 100%;
	height: 100%;
}

.div1-div3 {
	width: 54%;
	height: 100%;
	float: left;
}

.div1-div3-dl {
	width: 100%;
	height: 50%;
}

.div1-div3-dl>dd {
	width: 7%;
	overflow: hidden;
	float: left;
	font-size: 14px;
}

.div1-div3-dl>dd>a {
	color: #333
}

.div1-div3-dl>dd>a:hover {
	color: #F00;
}

.div1-div3-dl>dd>div>a {
	color: #333
}

.div1-div3-dl>dd>div>a:hover {
	color: #F00;
}

.div2 {
	width: max-with;
	min-width: 1000px;;
	background-color: #4169E1;
	height: 54px;
	text-align: center;
	position: relative;
	z-index: 5;
}

.div2-box {
	width: 76%;
	height: 100%;
	display: inline-block;
}

.div2-box>a {
	font-size: 14px;
	line-height: 54px;
	float: left;
	overflow: hidden;
	color: #fff;
	height: 54px;
}

.div2-box>a>span {
	padding: 0 15.5px;
	border-left: 1px solid #f87f5a;
}

.div2-box>.now {
	background-color: #000080;
}

.div2-box>.now>span {
	border-left: none
}

.div2-box>a:hover {
	background-color: #6495ED;
	overflow: visible;
}
</style>

<script>
$(function(){
	$("#a-login").click(function(){
		var parent= document.getElementById("div-iframe");
		var child=	document.createElement("iframe");
		child.setAttribute("src","login.jsp");
		child.setAttribute("class","iframe-login");
		child.setAttribute("id","iframe-login");
		child.setAttribute("scrolling","no");
		parent.appendChild(child);
		
		});
});

</script>
<div class="div1">
	<div class="div1-box">
		<div class="div1-div1"></div>
		<div class="div1-div2">
			<form class="div1-div2-form">
				<input type="text" style="height: 88%; width: 60%;" /> <input
					type="submit" style="font-size: 14px; height: 100%;" value="搜索" />
			</form>
		</div>
		<div class="div1-div3">
			<dl class="div1-div3-dl">
				<dd class="login" style="width: 17%;">
					<span class="icon"></span>
				</dd>
				<dd class="histroy">
					<div class="tit">
						<span class="icon"></span> <a href="">看过</a>
					</div>

				</dd>
				<dd class="booklib">
					<div class="tit">
						<span class="icon"></span> <a href="">书架</a>
					</div>

				</dd>
				<dd class="message">
					<div class="tit">
						<span class="icon"></span> <a href="">消息</a>
					</div>

				</dd>
				<dd class="write">
					<span class="icon"></span> <a target="_blank" href="">写书</a>
				</dd>
				<dd class="recharge">
					<span class="icon"></span> <a target="_blank" href="">充值</a>
				</dd>
				<dd class="recharge">
					<span class="icon"></span> <a target="_blank" href="">登陆</a>
				</dd>
			</dl>
		</div>
	</div>
</div>
<div class="div2">
	<div class="div2-box">
		<a target="_blank" href="" class="now"><span>首页</span>
		</a> <a target="_blank" href=""><span>排行榜</span>
		</a> <a target="_blank" href=""><span>分类</span>
		</a> <a target="_blank" href=""><span>我要写书</span>
		</a> <a target="_blank" href=""><span>男生频道</span>
		</a> <a target="_blank" href=""><span>女生频道</span>
		</a> <a target="_blank" href=""><span>个性频道</span>
		</a> <a target="_blank" href=""><span>IP改编</span>
		</a> <a target="_blank" href=""><span>免费</span>
		</a> <a target="_blank" href=""><span>完本</span>
		</a> <a target="_blank" href=""><span>论坛</span>
		</a> <a class="mobile" href=""><span>手机端</span>
		</a>
		<!--  <a target="_blank" href=""><span>游戏中心</span></a> -->
	</div>
</div>
<script>
$(function(){
	$("#zhuxiao").click(function(){
		
		
		});
});
$(function(){
	
	$(window).scroll( function() {
		
		if($(window).scrollTop()>65)
			{
			$(".div2").css("position","fixed");
			$(".div2").css("top","0px");
			$(".div2").css("width","100%");
			}
		else
			{
			$(".div2").css("position","relative");
			}
		} );
});
</script>