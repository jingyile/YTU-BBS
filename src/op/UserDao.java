package op;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Problem;
import model.Text;
import model.User;

public class UserDao {

	public User login(Connection con, User user) throws SQLException {
		User resultUser = null;
		String sql = "select * from usermessage where name=? and password=?";
		PreparedStatement ps = con.prepareStatement(sql);//
		ps.setString(1, user.getUsername());
		ps.setString(2, user.getPassword());
		ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			resultUser = new User(rs.getInt(7));
			resultUser.setUsername(rs.getString("name"));
			resultUser.setPassword(rs.getString("password"));
			// rs.first();
			resultUser.setIntroduce(rs.getString("introduce"));
			resultUser.setId(rs.getInt(7));
			// rs.last();
		}
		return resultUser;
	}

	public Text load(Connection con) throws SQLException {
		Text res = null;
		String sql = "SELECT * FROM usermessage,abc where id='01'and usermessage.userid=abc.userid order by num";
		PreparedStatement ps = con.prepareStatement(sql);//
		ResultSet rs = ps.executeQuery();
		rs.last();
		int numm = rs.getRow() + 1;
		rs.first();
		if (rs.next()) {
			res = new Text();
			res.setNum(numm);
		}
		return res;
	}

	public Text Inster(Connection con, Text text) throws SQLException {
		Text res = null;
		int num = text.getNum();
		int userid = text.getUserid();
		String txt = text.getTxt();
		String sql = "Insert into abc values('01'," + num + "," + userid + ",'" + txt + "')";
		PreparedStatement ps = con.prepareStatement(sql);//
		ps.executeUpdate();
		ps.close();
		return res;
	}

	public int find(Connection con, Problem add0) throws SQLException {// 获取当前发帖文章在该 分类下的ID
		int TitleId;
		String id0 = add0.getId();
		String sql = "Select * from title where id ='" + id0 + "'";
		PreparedStatement ps = con.prepareStatement(sql);//
		ResultSet rs = ps.executeQuery();
		rs.last();// 重要！
		int num = rs.getRow();
		TitleId = num;
		return TitleId;
	}

	public void Add(Connection con, Problem add0) throws SQLException {
		String id = add0.getId();
		String text = add0.getText();
		String title = add0.getTitle();
		int TitleId = add0.getTitleId();
		String sql = "Insert into title values(" + id + "," + TitleId + ",'" + title + "','" + text + "')";
		PreparedStatement ps = con.prepareStatement(sql);//
		ps.executeUpdate();
		ps.close();
	}
}