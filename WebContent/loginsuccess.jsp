<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>登录成功</title>
<link rel="stylesheet" href="css/main.css" type="text/css" />
<script type="text/javascript">
	setTimeout('window.location="index.jsp"', 5000)
</script>
</html>
</script>
</head>
<body class="main">
	<jsp:include page="head.jsp" />
	<jsp:include page="menu.jsp" />
	<div id="divcontent">
		<form action="login" method="post">
			<table width="900px" border="0" cellspacing="0">
				<tr>
					<td style="padding: 30px"><div style="height: 470px">
							<b style="font-size: 36px">恭喜你，${currentUser.username}<br>
								你已经登录成功，5秒后将自动跳转至主页，也可手动点击页面左上角LOGO前往......
							</b>

						</div></td>
				</tr>
			</table>
		</form>
	</div>
	<jsp:include page="foot.jsp" />
</body>
</html>
