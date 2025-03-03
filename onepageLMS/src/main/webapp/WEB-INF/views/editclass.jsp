<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Page Title</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<style>
* {
	box-sizing: border-box;
}

/* Style the body */
body {
	font-family: Arial, Helvetica, sans-serif;
	margin: 0;
}

/* Header/logo Title */
.header {
	padding: 30px;
	text-align: center;
	background: white;
	color: black;
}

ul {
	display: block;
	float: left;
	list-style-type: none;
	margin-top: 3px;
	margin-right: 0;
	/* margin:0; */
	padding: 0 0 70px 0;
	background-color: #f1f1f1;
	position: static;
	height: 100%;
	overflow: auto;
	text-align: center;
}

.profile {
	float: right;
	line-height: 50px;
	font-size: 30px;
	font-weight: bold;
	margin-right: 20px;
}

.settings {
	float: right;
	line-height: 50px;
	font-size: 30px;
	color: black;
	text-decoration: none;
	margin-right: 20px;
}

.logo {
	font-size: 25px;
	font-weight: bold;
	display: inline-block;
}

.guideline {
	display: inline-block;
	font-size: 30px;
	color: black;
	text-decoration: none;
	margin-left: 30px;
}

.topNavBar {
	padding: 10px 15px 8px 50px;
	box-shadow: 3px 3px grey;
	position: -webkit-static; /* Safari & IE */
	position: static;
	top: 0;
}

h1 {
	margin: 5px 15px;
}

@media only screen and (max-width: 1400px) {
	/* .margin-1 {margin-left: 50vw;} */
	.margin-2 {
		margin-left: 1%
	}
}

@media only screen and (max-width: 960px) {
	/* .margin-1 {margin-left: 30%;} */
	.margin-2 {
		margin-left: 1%
	}
}

@media only screen and (max-width: 700px) {
	/* .margin-1 {margin-left: 30%;} */
	.margin-2 {
		margin-left: 1%
	}
	.logo {
		font-size: 30px;
		font-weight: bold;
	}
	.guideline {
		font-size: 25px;
		margin-left: 5px;
	}
	.profile {
		font-size: 20px;
		margin-left: 5px;
		line-height: 40px;
	}
	.settings {
		font-size: 20px;
		margin-left: 5px;
		line-height: 40px;
	}
	.navbar a {
		float: none;
		width: 100%;
	}
	.title {
		font-size: 20px;
	}
	.img {
		width: 15px;
	}
	.fontSize {
		font-size: 12px;
	}
}

@media only screen and (max-width: 530px) {
	/* .margin-1 {margin-left: 30%;} */
	.margin-2 {
		margin-left: 1%
	}
	.logo {
		font-size: 22px;
		font-weight: bold;
	}
	.guideline {
		font-size: 22px;
		margin-left: 5px;
	}
	.profile {
		font-size: 20px;
		margin-left: 5px;
		line-height: 24px;
	}
	.settings {
		font-size: 20px;
		margin-left: 5px;
		line-height: 24px;
	}
	.navbar a {
		float: none;
		width: 100%;
	}
}

/* Responsive layout - when the screen is less than 700px wide, make the two columns stack on top of each other instead of next to each other */
/* @media screen and (max-width: 90%) {
  .row {   
    flex-direction: column;
  }
} */

/* Responsive layout - when the screen is less than 400px wide, make the navigation links stack on top of each other instead of next to each other */
@media screen and (max-width: 480px) {
	.logo {
		font-size: 20px;
		font-weight: bold;
	}
	.guideline {
		font-size: 20px;
		margin-left: 5px;
	}
	.profile {
		font-size: 18px;
		margin-left: 5px;
		line-height: 24px;
	}
	.settings {
		font-size: 18px;
		margin-left: 5px;
		line-height: 24px;
	}
	.navbar a {
		float: none;
		width: 100%;
	}
	.topNavBar {
		padding: 30px 10px;
	}
}

.content {
	overflow: auto;
	border: 3px solid #666;
	height: 100%;
}

/* all codes below should not be deleted */
/* .content div {
  padding: 2px;
} */
.content .classBar {
	padding: 0;
}

.menuBar {
	float: left;
	width: 2.5%; /* 45px; */
	height: 100%;
	text-align: center;
	border-right: 3px solid black;
}

.classBar {
	float: left;
	position: static;
	padding: 1px 16px;
	height: 100%;
	width: 13.5%; /* 200px; */
	border-right: 3px solid black;
}

.classContents {
	float: left;
	position: static;
	height: 100%;
	width: 84%;
	border-right: 3px solid black;
}

html, body {
	margin: 0;
	height: 100%;
	overflow: hidden;
}

.img {
	width: 30px;
	height: auto;
	margin-top: 10px;
}
</style>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css"
	integrity="sha384-wESLQ85D6gbsF459vf1CiZ2+rr+CsxRY0RpiF1tLlQpDnAgg6rwdsUF1+Ics2bni"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class="topNavBar">
		<span class="logo"> <i class="fa fa-file-text-o"
			aria-hidden="true"></i> <span style="color: #ffca04"> 원페이지 LMS
		</span>
		</span> <i class="fa fa-bars fa-2x settings" aria-hidden="true"></i> <i
			class="fa fa-cog fa-2x settings" aria-hidden="true"></i> <i
			class="fa fa-user fa-2x profile" aria-hidden="true"></i>

	</div>

	<div class="content">
		<div class="menuBar">

			<img
				src="https://storage.googleapis.com/gweb-uniblog-publish-prod/images/Google_Docs.max-500x500.png"
				alt="notice icon" class="img"> <img
				src="https://storage.googleapis.com/gweb-uniblog-publish-prod/images/Google_Docs.max-500x500.png"
				alt="notice icon" class="img"> <img
				src="https://storage.googleapis.com/gweb-uniblog-publish-prod/images/Google_Docs.max-500x500.png"
				alt="notice icon" class="img"> <img
				src="https://storage.googleapis.com/gweb-uniblog-publish-prod/images/Google_Docs.max-500x500.png"
				alt="notice icon" class="img"> <img
				src="https://storage.googleapis.com/gweb-uniblog-publish-prod/images/Google_Docs.max-500x500.png"
				alt="notice icon" class="img">
		</div>

		<div class="classBar">
			<div
				style="font-size: 18px; line-height: 15px; height: 30%; overflow: auto; border-bottom: 3px solid black">
				<div style="padding: 10px; border-bottom: 3px solid black">
					My Classes
					<!-- text can be clicked by using onClick -->
					<a style="float: right" href="addclass"> + </a>
				</div>
				<div class="classlist">
					<c:forEach items="${list}" var="u">
						<a href='../detail/${u.id}'>${u.className}</a>
						<br />
					</c:forEach>

				</div>

			</div>
			<div
				style="font-size: 18px; line-height: 15px; height: 30%; overflow: auto; border-bottom: 3px solid black">
				<div style="padding: 10px; border-bottom: 3px solid black">
					Playlist
					<div style="float: right">+</div>
				</div>
			</div>
			<div
				style="font-size: 18px; line-height: 15px; height: 40%; overflow: auto; border-bottom: 3px solid black">
				<div style="padding: 10px; border-bottom: 3px solid black">
					Attendance</div>
				<c:forEach items="${attendance}" var="v">
					<a href='../attendance/${v.attendanceID}'>${v.className}</a>
					<br />
				</c:forEach>
			</div>
		</div>


		<form method="post" action="../editok">

			<div class="classContents">

				<h2>${u.className}</h2>
				<p>${u.startDate}</p>
				<p>active--> ${u.active}</p>
				<div id='content' class="content">
					<!-- 지금은 ${u.classContent}에 대한 내용을 그대로 보여주는중 
				여기에서 ${u.classContent}에 입력을 할 때, 엔터를 누르거나 / 탭을 누르면 기호가 생기도록 해야한다.
				그리고 그 기호는 접었다 피는 것이 가능하도록 해야한다. -->

					<textarea cols="200" rows="50" name="classContent"
						onkeydown="myFunction(event)">${u.classContent}</textarea>
				</div>

				<p>
					check box: <input type="checkbox" name="active" value="${u.active}" />
				</p>
				<button type="submit">수정완료</button>

			</div>



		</form>


		<script>
			//document.designMode = "on"; //이렇게하면 classContents뿐만 아니라 전체적인 class에 대해서 수정이 가능해지는데,,어떻게 classContents만 수정을 해갈 수 있을까!!
			function myFunction(event) {
				if (event.which == 9) {
					// Execute command if user presses the TAB button:
					console.log("here9!!!");
					document.execCommand("indent");
					document.execCommand("insertUnorderedList");
					console.log("tab key");
				}

				if (event.which == 13) {
					console.log("here13!!!");
					document.execCommand("insertUnorderedList");
					console.log("enter key");
				}
			}
		</script>

	</div>


</body>
</html>
