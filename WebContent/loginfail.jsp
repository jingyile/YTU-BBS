<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>登录失败</title>
<link rel="stylesheet" href="css/main.css" type="text/css" />
<script type="text/javascript">
	setTimeout('window.location="login.jsp"', 5000)
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
							<b style="font-size: 36px">对不起，用户名或密码错误<br>
								请注意大小写，如果忘记密码可通过邮箱找回。<br> The page will be refreshed in 5
								seconds...
							</b>
						</div></td>
				</tr>
			</table>
		</form>
	</div>
	<jsp:include page="foot.jsp" />
</body>
</html>
