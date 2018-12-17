package web;
import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.User;
import Mysql.Db;
import op.UserDao;
import web.NowString;

public class LoginServlet extends HttpServlet{
    Db db=new Db();
    UserDao userDao=new UserDao();
    /**
     * 
     */
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        Connection con=null;
        try {
            User user=new User(username,password);
            con=db.getCon();
            User currentUser=userDao.login(con, user);
            if(currentUser==null){
                //System.out.prin.tln("no");
                request.setAttribute("error", "用户名或者密码错误");
                request.setAttribute("username", username);
                request.setAttribute("password", password);
                request.getRequestDispatcher("loginfail.jsp").forward(request, response);
            }else{
                System.out.println("yes");
                System.out.println(currentUser.getId());
                System.out.println(currentUser.getUsername());
                System.out.println(currentUser.getIntroduce());
                HttpSession session=request.getSession();
                session.setAttribute("currentUser",currentUser);
				session.setAttribute("id",currentUser.getId());
                response.sendRedirect("loginsuccess.jsp");
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    NowString time=new NowString();
    System.out.println(time.GetTime());
    }
    
    
}