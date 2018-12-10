package Mysql;
import model.Problem;
public class UserDaoTest {
public static void main(String[] args) {
UserDao userDao = DaoFactory.getInstance().getUserDao();
Problem add0=new Problem("0","000000000","00000000");
add0.setTitleId(4);
userDao.Add(add0);
}
}