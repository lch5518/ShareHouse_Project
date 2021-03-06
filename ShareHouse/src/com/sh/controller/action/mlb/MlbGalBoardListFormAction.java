package com.sh.controller.action.mlb;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sh.controller.action.Action;
import com.sh.dao.MlbGalBoardDAO;
import com.sh.vo.MlbGalBoardVO;

public class MlbGalBoardListFormAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String url = "mlb/galBoardListForm.jsp";
		
		MlbGalBoardDAO mlbDao = MlbGalBoardDAO.getInstance();
		
		//게시판 리스트 가져오기
		ArrayList<MlbGalBoardVO> galList = mlbDao.mlbGalBoardList();
		request.setAttribute("galList", galList);
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
		
	}

}
