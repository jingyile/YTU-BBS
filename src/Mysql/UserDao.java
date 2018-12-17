package Mysql;
import model.Problem;
import model.Text;
import model.User;

// 创建接口
public interface UserDao {
	 public User login(User user);//登录
	 public Text load();//加载
	 public Text Inster(Text text);//新增评论
	 public int find(Problem add0);//寻找当前帖子序号
	 public void Add(Problem add0);//发帖
     public void updateUser(User user); 
}
