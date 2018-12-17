<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>烟大BBS论坛</title>
<link rel="stylesheet" href="css/main.css" type="text/css" />
<script type="text/javascript">
	//setTimeout('window.location="index.jsp"',5000)
</script>
</head>
<body class="main">
	<jsp:include page="head.jsp" />
	<jsp:include page="menu.jsp" />
	<div id="divcontent">
		<form action="Add" method="get">
			<table width="900px" border="0" cellspacing="0">
				<tr>
					<td>你好，${currentUser.username}<br></td>
				</tr>
				<p style="font-size: 24px">请在下方输入帖子内容并选择你所在院校：</p>
				<div style="height: 470px; font-size: 24px;">
					标题：<input type="text" name="title0"
						style="width: 300px; height: 40px;"></input> <br>
					<br>内容：
					<textarea name="txt" style="width: 600px; height: 200px;"></textarea>
					<input type="reset" value="清空内容"><br> <br>
					<br>选择院系： <select name="area" size="1" style="height: 40px;">
						<option value="1" selected>计控</option>
						<option value="2">人文</option>
						<option value="3">经管</option>
						<option value="4">法院</option>
						<option value="5">化院</option>
						<option value="6">数院</option>
						<option value="7">生科</option>
						<option value="8">海院</option>
						<option value="9">土木</option>
						<option value="10">机电</option>
						<option value="11">光电</option>
						<option value="12">药院</option>
						<option value="13">环材</option>
						<option value="14">音舞</option>
					</select> 确认提交：<input type="submit" value="确认 " onclick="AddSucceed.jsp">
				</div>
			</table>
		</form>
	</div>
	<jsp:include page="foot.jsp" />
</body>
</html>
