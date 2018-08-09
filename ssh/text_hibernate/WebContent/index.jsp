<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>小说导入</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/houtai/managersave"
		method="post">
		<table>
			<tr>
				<td>小说名：</td>
				<td><input type="text" name="novel.name"
					value="<%=request.getAttribute("novelname")%>" />
				</td>
			</tr>
			<tr>
				<td>作者：</td>
				<td><input type="text" name="novel.auother"
					value="<%=request.getAttribute("novelauother")%>" />
				</td>
			</tr>
			<tr>
				<td>创建时间：</td>
				<td><input type="text" name="novel.createtime"
					value="<%=request.getAttribute("novelcreatetime")%>" />
				</td>
			</tr>
			<tr>
				<td>章节顺序：</td>
				<td>第<input style="width: 70px;" type="text"
					name="chapter.chapternum" />章</td>
			</tr>
			<tr>
				<td>章节名称：</td>
				<td><input type="text" name="chapter.name" />
				</td>
			</tr>
			<tr>
				<td>内容：</td>
				<td><textarea rows="10" cols="100" name="chapter.content"></textarea>
				</td>
			</tr>
			<tr>
				<td></
				<td>
				<td><input type="submit" value="提交" />
				</td>
			</tr>
		</table>
	</form>

</body>
</html>