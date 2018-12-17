package web;
import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Text;
import Mysql.Db;
import op.UserDao;
import web.NowString;
import web.LoginServlet;
public class CommentServlet extends HttpServlet{
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
        String HFtext=request.getParameter("txt");
    	Connection con=null;
        try {
            con=db.getCon();
            Text text0=userDao.load(con);
            text0.setTxt(HFtext);
            	Text text2=userDao.Inster(con, text0);
                //HttpSession session=request.getSession();
                //session.setAttribute("text0",text0);
                //session.setAttribute("num",currentUser.getId());          
            }
        catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    NowString time=new NowString();
    System.out.println(time.GetTime());
    }
    
    
}