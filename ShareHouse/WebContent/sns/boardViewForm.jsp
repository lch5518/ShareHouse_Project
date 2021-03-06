<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@include file="../include/header.jsp" %>    
<!DOCTYPE html>
<html>
<head>

		<meta name="viewport" content="width=device-width, initial-scale=1.0" charset="UTF-8">

		<title>Share House :: sns동아리 게시판</title>

		<!-- css include -->
		<link rel="stylesheet" type="text/css" href="css/materialize.css">
		<link rel="stylesheet" type="text/css" href="css/icofont.css">
		<link rel="stylesheet" type="text/css" href="css/owl.carousel.min.css">
		<link rel="stylesheet" type="text/css" href="css/owl.theme.default.min.css">

		<!-- my css include -->
		<link rel="stylesheet" type="text/css" href="css/custom-menu.css">
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<link rel="stylesheet" type="text/css" href="css/responsive.css">

	</head>
<body>
	<section id="breadcrumb-section" class="breadcrumb-section w100dt mb-30">
			<div class="container">

				<nav class="breadcrumb-nav w100dt">
					<div class="page-name hide-on-small-only left">
						<h4>sns동아리 게시판</h4>
					</div>
					<div class="nav-wrapper right">
						<a href="index.html" class="breadcrumb">Home</a>
						<a href="sns?command=snsBoardListFormAciton" class="breadcrumb active">sns동아리 게시판</a>
					</div>
					<!-- /.nav-wrapper -->
				</nav>
				<!-- /.breadcrumb-nav -->

			</div>
			<!-- container -->
		</section>
		<!-- /.breadcrumb-section -->
		<!-- ==================== header-section End ==================== -->

		<!-- ==================== board-section start ==================== -->
	<section id="error-section" class="error-section w100dt mb-50">
		<div class="container">
			<!-- sns board table form -->
			<table class="bordered">
					<tr>
						<th>제목</th>
						<td>${snsVo.bodTitle}</td>
						<th>작성자</th>
						<td>${snsVo.memberId}</td>
						<th>작성일</th>
						<td>${snsVo.bodDate}</td>
						
					</tr>
				
					<tr>
						<th>내용</th>
						<td colspan="5"><textarea name="contents"
						rows="28" cols="93" style="margin: 0px; width: 1051px; height: 246px;" disabled="disabled" >${snsVo.bodContents}</textarea></td>
					</tr>				
							
			</table>			
			
			<hr>
			<div>
				<input type="button" class="btn" style="float: right;"
				onclick="location.href='sns?command=snsBoardDeleteAction&bodNum=${snsVo.bodNum}'" value="삭제">
				<input type="button" class="btn" style="float: right;"
				onclick="location.href='sns?command=snsBoardUpdateFormAction&bodNum=${snsVo.bodNum}'" value="수정">
				<input type="button" class="btn" style="float: right;"
				onclick="location.href='sns?command=snsBoardListFormAciton'" value="목록">
			</div>
			
		
		
		
		<!--댓글부분  -->
		<table border="1" bordercolor="lightgray">
		<!-- 댓글 목록 -->	
		<c:if test="${requestScope.commentList != null}">
			<c:forEach var="comment" items="${requestScope.commentList}">
				<tr>
					<!-- 아이디, 작성날짜 -->
					<td width="150">
						<div>
							$${loginUser.memberName}<br>
							<font size="2" color="lightgray">${commentList.COMMDATE}</font>
						</div>
					</td>
					<!-- 본문내용 -->
					<td width="550">
						<div class="text_wrapper">
						</div>
					</td>
				</tr>
			</c:forEach>
		</c:if>
		</table>
		
		
		
		
		
		
		
		
		<!--댓글입력  -->
		<form name="frm" method="post" action="sns?command=snsCommentInsertAction" onsubmit="return validateBoard()">
		<div class="box-reply">
            <ul class="cmlist" id="com_list">
               <li>
                  <div class="comm_cont">
                     <div class="h">
                        <p class="comm m">
                     </div>
                  </div>
               </li>
            </ul>
            <table class="responsive-table ">
               <tr>
                  <th>댓글 </th>
                  <td colspan="5"><textarea name="contents"
                  rows="28" cols="93" style="margin: 0px; width: 900px; height: 100px;" ></textarea></td>
                  <td><input type="button" class="btn" style="float: right;"
                  onclick="location.href='sns?command=snsBoardViewFormAction&snsNum=${snsVo.bodNum}'" value="등록"></td>
               </tr>
            </table>
         </div>
		</form>
		
		
		
		
		         
		</div>
		
		

	<div id="comment">
		<table border="1" bordercolor="lightgray">
		<!-- 댓글 목록 -->	
		<c:if test="${requestScope.CommentList != null}">
			<c:forEach var="comment" items="${requestScope.CommentList}">
				<tr>
					<!-- 아이디, 작성날짜 -->
					<td width="150">
						<div>
							${comment.loginUser}<br>
							<font size="2" color="lightgray">${comment.COMMDATE}</font>
						</div>
					</td>
					<!-- 본문내용 -->
					<td width="550">
						<div class="text_wrapper">
						</div>
					</td>
				</tr>
			</c:forEach>
		</c:if>
			
			<!-- 로그인 했을 경우만 댓글 작성가능 -->
		<c:if test="${sessionScope.sessionID !=null}">
			<tr bgcolor="#F5F5F5">
			<form id="writeCommentForm">
				<input type="hidden" name="comment_board" value="${board.bodNum}">
				<input type="hidden" name="comment_id" value="${sessionScope.sessionID}">
				<!-- 아이디-->
				<td width="150">
					<div>
						${sessionScope.sessionID}
					</div>
				</td>
				<!-- 본문 작성-->
				<td width="550">
					<div>
						<textarea name="comment_content" rows="4" cols="70" ></textarea>
					</div>
				</td>
				
			</form>
			</tr>
		</c:if>
	
		</table>
	</div>

		<!-- container -->
	</section>
		<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
		<script type="text/javascript" src="js/materialize.js"></script>
		<script type="text/javascript" src="js/owl.carousel.min.js"></script>

		<!-- my custom js -->
		<script type="text/javascript" src="js/custom.js"></script>

		<script type="text/javascript">
		</script>
		
<%@include file="../include/footer.jsp" %>		
</body>
</html>