package com.saltmarket.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.saltmarket.product.model.service.ProductService;
import com.saltmarket.product.model.vo.Product;
import com.saltmarket.common.model.vo.ImgFile;

/**
 * Servlet implementation class ProductDetailController
 */
@WebServlet("/detail.pr")
public class ProductDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductDetailController() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int productNo = Integer.parseInt(request.getParameter("pno"));

		ProductService pService = new ProductService();

		int result = pService.increaseCount(productNo);
		
		if(result > 0) {
			
			Product p = pService.selectProduct(productNo);
			
			// 첨부파일 조회
			ImgFile i = pService.selectImage(productNo);
			
			// 응답데이터 담기
			request.setAttribute("p", p);
			request.setAttribute("if", i);
			
			// 게시글 상세조회 페이지로 포워딩
			request.getRequestDispatcher("views/product/productDetailView.jsp").forward(request, response);
			
		} else {	// 에러페이지
			request.setAttribute("errorMsg", "매물 상품 상세조회 실패");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
