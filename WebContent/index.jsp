<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<link rel="stylesheet" href="css/main.css" type="text/css" />
<link type="text/css" href="css/autoplay.css" rel="stylesheet" />
<script type="text/javascript" src="js/autoplay.js"></script>

</head>
<body class="main">
	<%
		session.setAttribute("userid", 0);
		session.setAttribute("username", "user");
	%>
	<%@include file="head.jsp"%>
	<%@include file="menu.jsp"%>
	<div id="box_autoplay">
		<div class="list">
			<ul>
				<li><img src="ad/1.png" width="900" height="335" /></li>
				<li><img src="ad/2.png" width="900" height="335" /></li>
				<li><img src="ad/3.png" width="900" height="335" /></li>
				<li><img src="ad/4.png" width="900" height="335" /></li>
				<li><img src="ad/5.png" width="900" height="335" /></li>
			</ul>
		</div>
	</div>
	<div id="divcontent">
		<table width="900px" border="0" cellspacing="0">
			<tr>
				<td width="497"><img src="images/billboard.gif" width="497"
					height="38" />
					<table cellspacing="0" class="ctl">
						<tr>
							<td width="485" height="29">尊敬的烟大BBS论坛用户， <br />
								目前烟大BBS论坛正处于测试阶段，欢迎大家参与测试使用！<br />发现问题可以点击页面右上角的提交BUG，祝大家生活愉快，学习进步！<br />
								2018年11月25日<br /> 烟大BBS管理员<br />
							</td>
						</tr>
					</table></td>
				<td style="padding: 5px 15px 10px 40px">
					<table width="100%" border="0" cellspacing="0">
					</table>
					<table width="100%" border="0" cellspacing="0">
						<tr>
							<td style="width: 80; text-align: center; font-size: 24px">
								纳新专区 <br /> <br />
							</td>
						</tr>
						<tr>
							<td style="width: 80; text-align: center"><a
								href="http://tieba.baidu.com/p/5816471655">
									【烟大协会等校园组织介绍汇总，欢迎你的加入】 </a> <br /></td>
						</tr>
						<tr>
							<td style="width: 80; text-align: center"><a
								href="http://tieba.baidu.com/p/5813922510">
									【欢迎加入烟台大学创业者协会💗】 </a> <br /></td>
						</tr>
						<tr>
							<td style="width: 80; text-align: center"><a
								href="http://tieba.baidu.com/p/5813388966">
									【烟台大学图书馆图书漂流站纳新啦】 </a> <br /></td>
						</tr>
						<tr>
							<td style="width: 80; text-align: center"><a
								href="http://tieba.baidu.com/p/5809999993">
									【追风者风筝协会纳新啦（超乎想象的风筝哦）】 </a> <br /></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</div>
	<%@include file="foot.jsp"%>
</body>
</html>