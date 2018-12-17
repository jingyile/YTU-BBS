<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="divhead">
	<table cellspacing="0" class="headtable">
		<tr>
			<td><a href="index.jsp"> <img src="images/logo1.png"
					width="300" height="100" border="0" />
			</a></td>
			<td style="text-align: right">
				<p style="font-size: 24px">欢迎你,${currentUser.username}</p> <a
				href="#">提交BUG</a> | <a href="AddXXX.jsp">发帖</a> | <a
				href="login.jsp">登录</a> | <a href=register.jsp>新用户注册</a>
			</td>
		</tr>
	</table>
</div>
