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
<script>
	function reloadpage() {
		window.location.reload();
	}
</script>
</head>
<body class="main">
	<jsp:include page="head.jsp" />
	<jsp:include page="menu.jsp" />
	<jsp:include page="time.jsp" />
	<%
		Class.forName("com.mysql.jdbc.Driver");//记载数据库驱动，注册到驱动管理器
		String url = "jdbc:mysql://localhost:3306/users?characterEncoding=utf8";
		String user = "root";
		String password = "201658503102";
		Connection conn = DriverManager.getConnection(url, user, password);
		Statement statement = conn.createStatement();
		String tit = request.getParameter("tit");
		String sql1 = "SELECT * FROM title where title='" + tit + "'"; //排序输出
		ResultSet rs1 = statement.executeQuery(sql1);//用于产生单个结果集的语句
		rs1.next();
		String Ttext = rs1.getString(4);
		String id01 = rs1.getString(1);
		int id02 = rs1.getInt(2);
		session.setAttribute("id01", id01);
		session.setAttribute("id02", id02);
		rs1.close();
	%>
	<div id="divcontent">
		<table style="width: 900px; border: 0; cellspacing: 0">
			<tr>
				<td style="padding: 30px"><div style="height: 1970px">
						<div style="text-align: center; font-size: 48px">
							<%=tit%>
						</div>

						<div
							style="text-align: center; font-size: 48px; padding: 80, 0, 0, 0">
							<table border="10" cellspacing="10">
								<tr>
									<td><img src="images/logo1.png" width=200px /></td>
									<td style="font-size: 24px; width: 500px"><%=Ttext%></td>
								</tr>
								<%
									String sql2 = "SELECT * FROM usermessage,abc where id='" + id01
											+ "'and usermessage.userid=abc.userid and id2=" + id02 + " order by num"; //排序输出
									ResultSet rs2 = statement.executeQuery(sql2);//用于产生单个结果集的语句
									while (rs2.next()) {
										int pid = rs2.getInt(11);
										String pname = rs2.getString(1);
										String HFtime = rs2.getString(13);
								%>
								<tr>
									<td style="font-size: 12px"><img src="images/<%=pid%>.png"
										width=200px /> <br> <%=pname%>,<%=HFtime%></td>
									<td style="font-size: 24px">
										<%
											out.print(rs2.getString(12));
										%>
									</td>
								</tr>
								<%
									}
									rs2.close();
									statement.close();
									conn.close();
								%>
							</table>
							<form action="comment.jsp" method="get" target="posthere">
								<iframe name="posthere" frameborder=0 width=0 height=0></iframe>
								<table border="0" cellspacing="10" width="700px">
									<tr>
										<td><img src="images/${currentUser.id}.png" width=200px /></td>
										<td><textarea name="txt"
												style="width: 600px; height: 80px;"></textarea></td>
									</tr>
									<tr>
										<td>${currentUser.username} <%=session.getAttribute("time")%>
										</td>
										<td><input type="submit" value="回复 "
											onclick="reloadpage()"></td>
									</tr>
								</table>
							</form>
						</div>
					</div> <jsp:include page="foot.jsp" />
</body>
</html>
