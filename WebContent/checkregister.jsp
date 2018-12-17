<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<%@ page language="java"%>

<%@ page import="com.mysql.jdbc.Driver"%>

<%@ page import="java.sql.*"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>注册验证</title>
<link rel="stylesheet" href="css/main.css" type="text/css" />
</head>
<body class="main">
	<jsp:include page="head.jsp" />
	<jsp:include page="menu.jsp" />
	<div id="divcontent">
		<table width="900px" border="0" cellspacing="0">
			<tr>
				<td style="padding: 30px"><div style="height: 470px">
						<div style="text-align: center; font-size: 48px">
							<%
								Class.forName("com.mysql.jdbc.Driver");//记载数据库驱动，注册到驱动管理器
								String url = "jdbc:mysql://localhost:3306/users?characterEncoding=utf8";
								String user = "root";
								String password = "201658503102";
								String tableName = "usermessage";
								Connection conn = DriverManager.getConnection(url, user, password);
								Statement statement = conn.createStatement();
								//String sql="SELECT * FROM "+tableName;
								String name0 = request.getParameter("name");
								String password0 = request.getParameter("password0");
								String sex0 = request.getParameter("sex");
								//String sex0=new String(request.getParameter("sex").getBytes("ISO8859_1"),"utf-8");
								String email0 = request.getParameter("email");
								String telenum0 = request.getParameter("telephone");
								String introduce0 = request.getParameter("introduce");
								out.print(introduce0);
								out.print("<br>");
								String sql1 = "SELECT * FROM " + tableName + " where name='" + name0 + "'";
								String sql3 = "SELECT * FROM " + tableName + ""; //查看当前一共多少个已注册用户
								//out.print(sql3);
								ResultSet rs3 = statement.executeQuery(sql3);//用于产生单个结果集的语句
								rs3.last();//重要！！
								int num = rs3.getRow() + 1;//编号
								//out.print(num);
								ResultSet rs1 = statement.executeQuery(sql1);//用于产生单个结果集的语句s
								ResultSetMetaData rmeta1 = rs1.getMetaData();//返回 ResultSetMetaData 对象
								if (rs1.next()) {
									out.print("该用户名已存在！ ");
									out.print("<br>");
								} else {
									//String sql2="Insert into `usermessage` values('"+name0+"','"+password0+"','"+sex0+"','"+email0+"','"+telenum0+"','是是是')";
									String sql2 = "Insert into `usermessage` values('" + name0 + "','" + password0 + "','" + sex0 + "','"
											+ email0 + "','" + telenum0 + "','" + introduce0 + "'," + num + ")";
									//String sql2="Insert into `usermessage` values('hedingqing','996128303')";
									statement.executeUpdate(sql2);
									out.print("恭喜你，注册成功！");
									out.print("<br>");
									//rs2.close();
								}

								out.print("<br>");

								//out.print("数据库操作成功，恭喜你");

								rs1.close();
								rs3.close();
								statement.close();

								conn.close();
							%>
						</div>
					</div> <jsp:include page="foot.jsp" />
</body>
</html>

