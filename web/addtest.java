package web;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Problem;
import Mysql.DaoFactory;
import Mysql.UserDao;
import Mysql.UserDaoJdbcImpl;
/**
 * Servlet implementation class addtest
 */
@WebServlet("/addtest")
public class addtest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addtest() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		UserDao userDao = DaoFactory.getInstance().getUserDao();
		String HFtext=request.getParameter("txt");
        String id0=request.getParameter("area");
        String title=request.getParameter("title0");
    	Connection con=null;
        try {
            response.sendRedirect("AddSucceed.jsp");
             Problem add0=new Problem(id0,HFtext,title);
             int TitleId=userDao.find(add0)+1;//新文章的编号
             System.out.println(id0);
             System.out.println(TitleId);
             add0.setTitleId(TitleId);
             userDao.Add(add0);  
            }
        catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
