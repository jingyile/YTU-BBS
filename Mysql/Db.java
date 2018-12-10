package Mysql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Db {
	// Class.forName("com.mysql.jdbc.Driver");//记载数据库驱动，注册到驱动管理器
	private String url = "jdbc:mysql://localhost:3306/users?characterEncoding=utf8";
	private String user = "root";
	private String password = "201658503102";
	private String driver = "com.mysql.jdbc.Driver";

	public Connection getCon() throws Exception {
		Class.forName(driver);
		Connection con = DriverManager.getConnection(url, user, password);
		return con;
	}

	public static void getClose(Connection con) throws SQLException {
		if (con != null) {
			con.close();
		}
	}

	public static void main(String[] args) {
		Db db = new Db();
		try {
			db.getCon();
			System.out.println("测试连接数据库，连接成功");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("测试连接数据库，连接失败");
		}

	}

}