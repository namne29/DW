package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import dao.StagingDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Staging;

/**
 * Servlet implementation class LotteryServlet
 */
@WebServlet("/LotteryServlet")
public class LotteryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private StagingDAO dao;
    /**
     * Default constructor. 
     */
    public LotteryServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String lang = request.getParameter("lang");
		//dao = new StagingDAOImpl();
		//List<Staging> data = dao.getList();
		List<Staging> data = new ArrayList<Staging>();
		data.add(new Staging("05/11/2022","Binh duong",123,123,123,123,123,123,123,123,123));
		request.setAttribute("listData", data);		
		RequestDispatcher dispatcher = request.getRequestDispatcher("lotteryresult.jsp");
        dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
