<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<%@ page language="java"%>

<%@ page import="com.mysql.jdbc.Driver"%>

<%@ page import="java.sql.*"%>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>烟大BBS论坛</title>
<link rel="stylesheet" href="css/main.css" type="text/css" />
</head>
<body class="main">
	<jsp:include page="head.jsp" />
	<jsp:include page="menu.jsp" />
	<%
		Class.forName("com.mysql.jdbc.Driver");//记载数据库驱动，注册到驱动管理器
		String url = "jdbc:mysql://localhost:3306/users?characterEncoding=utf8";
		String user = "root";
		String password = "201658503102";
		String tableName = "title";
		Connection conn = DriverManager.getConnection(url, user, password);
		Statement statement = conn.createStatement();
		String id1 = request.getParameter("tid");
		String sql1 = "SELECT * FROM title where id='" + id1 + "'";
		ResultSet rs = statement.executeQuery(sql1);//用于产生单个结果集的语句
		int flag = -1;
		while (rs.next()) {
			flag++;
			String title = rs.getString(3);
			String text = rs.getString(4);
	%>
	<div id="divcontent">
		<form action="page0.jsp" method="get">
			<table style="width: 900px; border: 0; cellspacing: 0">
				<tr>
					<td><div style="height: 1970px">
							<div style="text-align: center; font-size: 36px">
								<a style="text-align: center; font-size: 36px" href=#>标题：<%=title%></a>
								<button type="submit" name="tit" value="<%=title%>"
									style="width: 80px; height: 40px">查看详情</button>
							</div>
							<div style="text-align: center; font-size: 48px;">
								<table border="10" cellspacing="10">
									<tr>
										<td><img src="images/logo1.png" width=200px /></td>
										<td style="font-size: 24px; width: 500px"><%=text%></td>
									</tr>
									</form>
									<%
										}
										if (flag == -1) {
									%>
									<br>
									<div style="font-size: 24px; color: red">当前分类下暂时没有任何帖子，需要你的火力支援！</div>
									<%
										}
										rs.close();
										statement.close();
										conn.close();
									%>
								</table>
							</div></td>
				</tr>
			</table>
	</div>
	<jsp:include page="foot.jsp" />
</body>
</html>
