package web;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Problem;
import Mysql.Db;
import op.UserDao;
import web.NowString;
import web.LoginServlet;

public class AddServlet extends HttpServlet {
	Db db = new Db();
	UserDao userDao = new UserDao();
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String HFtext = request.getParameter("txt");
		String id0 = request.getParameter("area");
		String title = request.getParameter("title0");
		Connection con = null;
		try {
			response.sendRedirect("AddSucceed.jsp");
			con = db.getCon();
			Problem add0 = new Problem(id0, HFtext, title);
			int TitleId = userDao.find(con, add0) + 1;// 新文章的编号
			System.out.println(id0);
			System.out.println(TitleId);
			add0.setTitleId(TitleId);
			userDao.Add(con, add0);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		NowString time = new NowString();
		System.out.println(time.GetTime());
	}

}