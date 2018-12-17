package Mysql;
import Mysql.DaoFactory;
import Mysql.UserDao;
public interface IFactory {
	void DaoFactory();

	UserDao getUserDao();
}
