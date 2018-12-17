<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page language="java" %>

<%@ page import="com.mysql.jdbc.Driver" %>

<%@ page import="java.sql.*" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
Class.forName("com.mysql.jdbc.Driver");//记载数据库驱动，注册到驱动管理器
String url = "jdbc:mysql://localhost:3306/users?characterEncoding=utf8"; 
String user = "root"; 
String password = "201658503102"; 
String tableName="abc";
Connection conn = DriverManager.getConnection(url,user,password); 
Statement statement = conn.createStatement();
String text=request.getParameter("txt");
String id01=(String)session.getAttribute("id01");
int id02=(int)session.getAttribute("id02");
String sql1="SELECT * FROM "+tableName+" where id='"+id01+"' and id2="+id02+" order by num;";	//排序输出
ResultSet rs = statement.executeQuery(sql1);//用于产生单个结果集的语句
ResultSetMetaData rmeta = rs.getMetaData();//返回 ResultSetMetaData 对象
rs.last();//重要！！
int num=rs.getRow()+1;
rs.first();//一定要回退
int userid=(int)session.getAttribute("id");
String time=(String)session.getAttribute("time");
String sql="Insert into "+tableName+" values('"+id01+"',"+id02+","+num+","+userid+",'"+text+"','"+time+"')";
statement.executeUpdate(sql);
  statement.close();
  conn.close();
  %>

