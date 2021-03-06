package com.sh.controller;

import com.sh.controller.action.Action;
import com.sh.controller.action.MainAction;
import com.sh.controller.action.member.InsertMemberAction;
import com.sh.controller.action.member.JoinFormAction;
import com.sh.controller.action.member.MemberIdCheckAction;
import com.sh.controller.action.mlb.MlbBoardListFormAction;
import com.sh.controller.action.mlb.MlbBoardInsertFormAction;
import com.sh.controller.action.startup.InsertStuBoardAction;
import com.sh.controller.action.startup.InsertStuBoardListAction;
import com.sh.controller.action.startup.StuBoardListFormAction;
import com.sh.controller.action.startup.StuBoardUpdateAction;
import com.sh.controller.action.startup.StuBoardUpdateFormAction;
import com.sh.controller.action.startup.StuBoardView;

/**
 * request로 받아온 매개변수의 command의 값으로 각 기능을 수행할 액션을 분기하는 클래스 <br>
 * action추가 시 최대한 기능별로 정렬될 수 있도록 한다. 수정이 잦은 class이므로 주의하여 편집!!
 * 
 * @author cho
 *
 */

public class ActionFactory {
	private static ActionFactory instance = new ActionFactory();

	private ActionFactory() {
		super();
	}

	public static ActionFactory getInstance() {
		return instance;
	}

	public Action getAction(String command) {
		Action action = null;

		System.out.println("ActionFactory : " + command);

		if (command.equals("main")) {

			action = new MainAction();
		}
/**
 * @author LeeHan
 * 
 */

/**
 * @author Kim Jung Min
 * 
 */

		
		
/**
 * @author Lee Chang Hyun
 * 		
 */

		return action;

	}
}
