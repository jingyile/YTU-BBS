<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>用户登录</title>
<link rel="stylesheet" href="css/main.css" type="text/css" />
</head>
<body class="main">
	<jsp:include page="head.jsp" />
	<jsp:include page="menu.jsp" />
	<div id="divcontent">
		<form action="login" method="post">
			<table width="900px" border="0" cellspacing="0">
				<tr>
					<td style="padding: 30px"><div style="height: 470px">
							<b>&nbsp;&nbsp;首页&nbsp;&raquo;&nbsp;个人用户登录</b>
							<div>
								<table width="85%" border="0" cellspacing="0">
									<tr>
										<td>
											<div id="logindiv">
												<table width="100%" border="0" cellspacing="0">
													<tr>
														<td style="text-align: center; padding-top: 20px"><img
															src="images/logintitle.gif" width="150" height="30" /></td>
													</tr>
													<tr>
														<td style="text-align: center; padding-top: 20px;"><font
															color="#ff0000">${requestScope["register_message"]}</font>
														</td>
													</tr>
													<tr>
														<td style="text-align: center">
															<table width="80%" border="0" cellspacing="0"
																style="margin-top: 15px; margin-left: auto; margin-right: auto">
																<tr>
																	<td
																		style="text-align: right; padding-top: 5px; width: 25%">用户名：</td>
																	<td style="text-align: left"><input
																		name="username" type="text" class="textinput"
																		value="${username}" /></td>
																</tr>
																<tr>
																	<td style="text-align: right; padding-top: 5px">密&nbsp;&nbsp;&nbsp;&nbsp;码：</td>
																	<td style="text-align: left"><input
																		name="password" type="password" class="textinput"
																		value="${username}" /></td>
																</tr>
																<tr>
																	<td colspan="2" style="text-align: center"><input
																		type="checkbox" name="checkbox" value="checkbox01" />记住用户名
																		&nbsp;&nbsp; <input type="checkbox" name="checkbox"
																		value="checkbox02" /> 自动登录</td>
																</tr>
																<tr>
																	<td colspan="2"
																		style="padding-top: 10px; text-align: center"><input
																		name="image" type="image"
																		;
																		src="images/loginbutton.gif"
																		width="90" height="30" /></td>
																</tr>

																<tr>
																	<td colspan="2" style="padding-top: 10px"><img
																		src="images/loginline.gif" width="241" height="10" />
																	</td>
																</tr>
															</table>
														</td>
													</tr>
												</table>
											</div>
										</td>
										<td style="text-align: left; padding-top: 30px; width: 60%"><h1>您还没有注册？</h1>
											<p>注册烟大BBS论坛账号，和万千校友畅所欲言!</p>
											<p>这是一个奇妙的社区，你可以在这里找朋友，无论是一起 学习还是一起游戏。</p>
											<p>超人气社区！各种小哥哥小姐姐！</p>
											<p style="text-align: left">
												<a href="register.jsp"> <img
													src="images/signupbutton.gif" width="135" height="33" />
												</a>
											</p></td>
									</tr>
								</table>
							</div>
						</div></td>
				</tr>
			</table>
		</form>
	</div>
	<jsp:include page="foot.jsp" />
</body>
</html>
