/**
 *  @author Lee Han
 */

//로그인 안 했을 때 게시물 등록 못함
function insertFormCheck(){
	// 현재 로그인 한 아이디 가져오기
	var memId = document.getElementsByName("memId")[0].value;
	
	if(memId == ""){
		alert("로그인을 해주세요.");
		location.href='stu?command=stuBoardList';
		return false;
	} else{
		return true;
	}
	
	
}


function validateBoard(){
	if (document.frm.bodTitle.value == "") {
		alert("제목을 입력해주세요.");
		frm.bodTitle.focus();
		return false;
	}
	if (document.frm.bodContents.value == "") {
		alert("내용을 입력해주세요.");
		frm.bodContents.focus();
		return false;
	}
	alert("등록되었습니다.");
	return true;
}

function deleteAlert(){
	
	
}

//수정 유효성 검사
function validateUpdateBoard(){
	if (document.frm.bodTitle.value == "") {
		alert("제목을 입력해주세요.");
		frm.bodTitle.focus();
		return false;
	}
	if (document.frm.bodContents.value == "") {
		alert("내용을 입력해주세요.");
		frm.bodContents.focus();
		return false;
	}
	alert("수정되었습니다.");
	return true;
}

//삭제 알람
function deleteAlert(){
	alert("삭제되었습니다.");
}



