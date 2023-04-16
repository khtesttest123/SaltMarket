package com.saltmarket.freeboard.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.saltmarket.common.model.vo.PageInfo;
import com.saltmarket.freeboard.model.service.FreeboardService;
import com.saltmarket.freeboard.model.vo.Freeboard;

/**
 * Servlet implementation class BoardListController
 */
@WebServlet("/freeboardlist.bo")
public class FreeboardListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public FreeboardListController() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int listCount;
		int currentPage;
		int pageLimit;
		int boardLimit;
		
		int maxPage;
		int startPage;
		int endPage;
		String category;
		
		category = request.getParameter("category");
		listCount = new FreeboardService().selectListCount(category);
		currentPage = Integer.parseInt(request.getParameter("currentPage"));
		
		pageLimit = 10;
		boardLimit = 15;
		maxPage = (int)Math.ceil((double)listCount / boardLimit);
		startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
		endPage = startPage + pageLimit - 1;
		
		 if(endPage > maxPage) {
			 endPage = maxPage;
		 }
		 
		 PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, 
				  boardLimit, maxPage, startPage, endPage);
		 
		 ArrayList<Freeboard> list = new FreeboardService().selectList(pi, category);
		 
		 request.setAttribute("pi", pi);
		 request.setAttribute("list", list);
		 
		 request.getRequestDispatcher("views/board/boardListView.jsp").forward(request, response);
		 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
