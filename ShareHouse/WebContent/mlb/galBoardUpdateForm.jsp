<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/header.jsp"%>
<!DOCTYPE html>
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1.0"
	charset="UTF-8">

<title>Share House :: 농구동아리 갤러리</title>

<!-- css include -->
<link rel="stylesheet" type="text/css" href="css/materialize.css">
<link rel="stylesheet" type="text/css" href="css/icofont.css">
<link rel="stylesheet" type="text/css" href="css/owl.carousel.min.css">
<link rel="stylesheet" type="text/css"
	href="css/owl.theme.default.min.css">


<!-- my css include -->
<link rel="stylesheet" type="text/css" href="css/custom-menu.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/responsive.css">



</head>
<body>
	<section id="breadcrumb-section"
		class="breadcrumb-section w100dt mb-30">
		<div class="container">

			<nav class="breadcrumb-nav w100dt">
				<div class="page-name hide-on-small-only left">
					<h4>농구동아리 갤러리</h4>
				</div>
				<div class="nav-wrapper right">
					<a href="index.html" class="breadcrumb">Home</a> <a
						href="mlb?command=mlbGalBoardListFormAction"
						class="breadcrumb active">농구동아리 갤러리</a>
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
	<section id="single-blog-section"
		class="single-blog-section w100dt mb-50">
		<div class="container">
			<div class="row">
				<div class="col m12 s12">
					<div class="blogs mb-30">
						<div class="card">
							<div class="card-image">
								<img src="img/selfie.jpg" alt="Image">
							</div>
							<!-- /.card-image -->
							<div class="card-content w100dt">

								<input type="text" value="${mlbVo.galTitle}"
									class="card-title mb-30">
								
								
								<div class="file-field">
									<div class="btn btn-primary btn-sm float-left">
										<span>사진 첨부</span> <input type="file">
									</div>
									<div class="file-path-wrapper">
										<input class="file-path validate" type="text"
											placeholder="Upload your file">
									</div>
								</div>
								

								<p class="w100dt mb-50">
									<br>
									<textarea style="margin: 0px; width: 1090px; height: 125px;">${mlbVo.galContents}</textarea>
								</p>

								<ul class="tag-list right">
									<li><a href="mlb?command=mlbGalBoardListFormAction"
										class="waves-effect">#목록</a></li>
									<li><a
										href="mlb?command=mlbGalBoardUpdateFormAction&galNum=${mlbVo.galNum}"
										class="waves-effect">#수정</a></li>
									<li><a
										href="mlb?command=mlbGalBoardDeleteAction&galNum=${mlbVo.galNum}"
										class="waves-effect">#삭제</a></li>
								</ul>

								<ul class="share-links left">
									<li><a href="#" class="facebook"><i
											class="icofont icofont-social-facebook"></i></a></li>
									<li><a href="#" class="twitter"><i
											class="icofont icofont-social-twitter"></i></a></li>
									<li><a href="#" class="google-plus"><i
											class="icofont icofont-social-google-plus"></i></a></li>
									<li><a href="#" class="linkedin"><i
											class="icofont icofont-brand-linkedin"></i></a></li>
									<li><a href="#" class="pinterest"><i
											class="icofont icofont-social-pinterest"></i></a></li>
									<li><a href="#" class="instagram"><i
											class="icofont icofont-social-instagram"></i></a></li>
								</ul>

							</div>
							<!-- /.card-content -->
						</div>
						<!-- /.card -->
					</div>
					<!-- /.blogs -->
					<!-- nlb board table form -->
					<%-- <table class="bordered">
					<tr>
						<th>제목</th>
						<td>${mlbVo.galTitle}</td>
						<th>작성자</th>
						<td>${mlbVo.adminId}</td>
						<th>작성일</th>
						<td>${mlbVo.galDate}</td>
						
					</tr>
					
					<tr>
					<td><img width="300px" height="300px" alt="${mlbVo.fileName}" src="/displayFile?fileName=${mlbVo.fileName}"></td>
					</tr>
				
					<tr>
						<th>내용</th>
						<td colspan="5"><textarea name="contents"
						rows="28" cols="93" style="margin: 0px; width: 1051px; height: 246px;" disabled="disabled" >${mlbVo.galContents}</textarea></td>
					</tr>				
							
			</table>	 --%>

					<%-- 					<hr>
					<div>

						<input type="button" class="btn" style="float: right;"
							onclick="location.href='mlb?command=mlbBoardDeleteAction&bodNum=${mlbVo.galNum}'"
							value="삭제"> <input type="button" class="btn"
							style="float: right;"
							onclick="location.href='mlb?command=mlbBoardUpdateFormAction&bodNum=${mlbVo.galNum}'"
							value="수정"> <input type="button" class="btn"
							style="float: right;"
							onclick="location.href='mlb?command=mlbBoardListFormAciton'"
							value="목록">
					</div> --%>
				</div>
			</div>

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
	<%@include file="../include/footer.jsp"%>
</body>
</html>