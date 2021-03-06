package com.sh.controller.action.mlb;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sh.controller.action.Action;
import com.sh.dao.MlbBoardDAO;
import com.sh.vo.MlbBoardVO;

public class MlbBoardInsertAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String bodTitle = request.getParameter("bodTitle");
		String bodContents = request.getParameter("bodContents");
	    String memId = request.getParameter("memId");
	  //String adminId
		
		MlbBoardVO mlbVo = new MlbBoardVO();
		mlbVo.setBodTitle(bodTitle);
		mlbVo.setBodContents(bodContents);
		mlbVo.setMemberId(memId);
		
		MlbBoardDAO mlbDao = MlbBoardDAO.getInstance();
		mlbDao.insertMlbBoard(mlbVo);
		
		//목록 화면으로 이동
		new MlbBoardListFormAction().execute(request, response);
		
		
	}

}
