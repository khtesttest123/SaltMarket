package com.saltmarket.freeboard.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.saltmarket.common.model.vo.PageInfo;
import com.saltmarket.common.model.vo.SearchInfo;
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
		
		int currentPage = Integer.parseInt(request.getParameter("currentPage"));
		String category = request.getParameter("category");
		String kind = request.getParameter("kind");
		String keyword = request.getParameter("keyword");
		
		 if(kind == null || keyword == null) {
			 kind = "null"; keyword = "null";
		 } 
		SearchInfo si = new SearchInfo(category, kind, keyword);
		int listCount = new FreeboardService().selectListCount(si);
		int pageLimit = 10;
		int boardLimit = 15;
		int maxPage = (int)Math.ceil((double)listCount / boardLimit);
		int startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
		int endPage = startPage + pageLimit - 1;
		
		 if(endPage > maxPage) {
			 endPage = maxPage;
		 }
		 
		 PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, 
				  boardLimit, maxPage, startPage, endPage);
		 
		 ArrayList<Freeboard> list = new FreeboardService().selectList(pi, si);
		 ArrayList<Freeboard> bestList = new FreeboardService().selectBestList(category);
		 
		 request.setAttribute("si", si);
		 request.setAttribute("pi", pi);
		 request.setAttribute("list", list);
		 request.setAttribute("bestList", bestList);
		 
		 request.getRequestDispatcher("views/board/boardListView.jsp").forward(request, response);
		 System.out.println(pi);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
