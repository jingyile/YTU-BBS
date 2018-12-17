package Mysql;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import Mysql.JdbcUtils;
import Mysql.DaoException;
import Mysql.UserDao;
import model.Problem;
import model.Text;
import model.User;
//接口的实现类
public class UserDaoJdbcImpl implements UserDao {
@Override

public User login(User user) {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	User resultUser=null;
	try {
	conn = JdbcUtils.getConn();
	  String sql="select * from usermessage where name=? and password=?";
	ps = conn.prepareStatement(sql);
	ps.setString(1, user.getUsername());
	ps.setString(2, user.getPassword());
	rs=ps.executeQuery();
	while(rs.next()){
        resultUser=new User(rs.getInt(7));
       resultUser.setUsername(rs.getString("name"));
       resultUser.setPassword(rs.getString("password"));
        resultUser.setIntroduce(rs.getString("introduce"));
        resultUser.setId(rs.getInt(7));
	}}	catch(SQLException e){
	//  为了不让业务逻辑层处理该异常，
	throw new DaoException(e.getMessage(),e) ;
	} finally {
	JdbcUtils.free(rs, ps, conn);
	}
	return  resultUser ;
}
public Text Inster(Text text){
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	Text res=null;
	try {
		conn = JdbcUtils.getConn();
		int num=text.getNum();
		int userid=text.getUserid();
		String txt=text.getTxt();
		String sql="Insert into abc values('01',"+num+","+userid+",'"+txt+"')";
	    ps=conn.prepareStatement(sql);//
		ps.executeUpdate();
	}catch(SQLException e){
	//  为了不让业务逻辑层处理该异常，
	throw new DaoException(e.getMessage(),e) ;
	} finally {
	JdbcUtils.free(rs, ps, conn);
	}
	return res;
	}

public int find(Problem add0) {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	int TitleId;
	try {
    conn = JdbcUtils.getConn();
	String id0=add0.getId();
	String sql="Select * from title where id ='"+id0+"'";
	ps=conn.prepareStatement(sql);//
	rs=ps.executeQuery();
	rs.last();//重要！
	int num=rs.getRow();
	TitleId=num;
	}catch(SQLException e){
		//  为了不让业务逻辑层处理该异常，
		throw new DaoException(e.getMessage(),e) ;
		} finally {
		JdbcUtils.free(rs, ps, conn);
		}
    return TitleId;
}
@Override
public Text load() {
	// TODO Auto-generated method stub
	return null;
}
@Override
public void Add(Problem add0) {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	try{
		conn = JdbcUtils.getConn();
       	String id=add0.getId();
       	String text=add0.getText();
       	String title=add0.getTitle();
       	int TitleId=add0.getTitleId();
    	String sql="Insert into title values("+id+","+TitleId+",'"+title+"','"+text+"')";
        ps=conn.prepareStatement(sql);//
    	ps.executeUpdate();
    }catch(SQLException e){
		//  为了不让业务逻辑层处理该异常，
		throw new DaoException(e.getMessage(),e) ;
		} finally {
		JdbcUtils.free(rs, ps, conn);
		}

}
@Override
public void updateUser(User user) {
	// TODO Auto-generated method stub
	
}	
  
    
   

}