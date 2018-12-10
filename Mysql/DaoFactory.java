package Mysql;
import java.io.InputStream;
import java.util.Properties;
public class DaoFactory implements IFactory{
// 注意 对象的 创建顺序
private   static UserDao userDao = null;//每个需要操作数据的程序都需要UserDao实例，故引入单例模式节省开销；
private static  DaoFactory instance = new DaoFactory();//类一加载便创建实例
private DaoFactory() {//单例必须构造器私有；
try {
Properties prop = new Properties();
//InputStream inStream = new FileInputStream(new File("src/daoconfig.properties"));//但是这样写的话文件的位置就被写死了
//  优点：文件不一定要和路径绑定，只要文件从在于 ClassPath 中 就可以找得到
InputStream inStream = DaoFactory.class.getClassLoader().getResourceAsStream("daoconfig.properties");
prop.load(inStream);
// 从配置文件中获得的 value 值 都是字符串(String)
String userDaoClzz = prop.getProperty("userDaoFactory");
// 通过反射方式 创建对象
Class<?> clazz = Class.forName(userDaoClzz);
userDao = (UserDao) clazz.newInstance();//通过Class实例在不知道类名的情况下创建该类的实例，摆脱了对UserDaoJdbcImpl的依赖;
} catch (Exception e) {
throw new ExceptionInInitializerError(e); //抛出初始化时的异常 
}
}

@Override
public void DaoFactory() {
	// TODO Auto-generated method stub
	
}
public static DaoFactory getInstance() {
	// TODO Auto-generated method stub
	return instance;
}
public UserDao getUserDao() {
	// TODO Auto-generated method stub
	return userDao ;
}
}