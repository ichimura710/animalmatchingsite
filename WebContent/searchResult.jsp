<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%@ page import="java.util.List" %>

<%@ page import = "Servlet.SearchResult" %>
<%@ page import = "Dto.AnimalDto" %>
<% String kind = (String)request.getAttribute("kind"); %>
<% String birthday = (String)request.getAttribute("birthday"); %>
<% String contact = (String)request.getAttribute("contact"); %>
<% String sex = (String)request.getAttribute("sex"); %>
<% String user_area = (String)request.getAttribute("user_area"); %>

<%	String image = (String) request.getAttribute("image");%>

<%	List<AnimalDto> animalList = (List<AnimalDto>)request.getAttribute("animalList");%>
<%String error = (String) request.getAttribute("error");%>
<% if(kind == null){ %>
<%kind = ""; %>
<%} %>

<% if(birthday == null){ %>
<%birthday = ""; %>
<%} %>

<% if(sex == null){ %>
<%sex = ""; %>
<%} %>

<% if(user_area == null){ %>
<%user_area = ""; %>
<%} %>




<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Animal Matching</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="ここにサイト説明を入れます">
<meta name="keywords" content="キーワード１,キーワード２,キーワード３,キーワード４,キーワード５">
<link rel="stylesheet" href="css/style.css">
<script src="js/openclose.js"></script>
<script src="js/fixmenu_pagetop.js"></script>
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body class="c1">

<div id="container">

<header>
<div class="inner">
<h1 id="logo"><a href="home.jsp"><img src="images/logo.png" alt="SAMPLE BREEDER"></a></h1>
</div>
<!--PC用（801px以上端末）メニュー-->
</header>

<div class="inner">

<div id="contents">

<div id="main">

<article>

<h2>検索結果</h2>


	<!-- <div class="grid-table">

    <div class="row">写真</div><div><img class="img01" src="images/sample_photo1.jpg" width="50" height="38" alt="いぬ"></div>
    <div class="row">種類</div><div>いぬ</div>
    <div class="row">生年月日</div><div>５歳</div>
    <div class="row">性別</div><div>メス</div>
    <div class="row">特徴</div><div class="char01">青い</div>

	</div> -->

	<%if(error==null){ %>


	<table border width="1070"  style="table-layout: fixed;">
		<tr>
			<th>画像</th>
			<th>種類</th>
			<th>生年月日</th>
			<th>性別</th>
			<th>地域</th>
			<th>特徴</th>
			<th>連絡先</th>
		</tr>
		<% for(AnimalDto List : animalList){ %>
		<tr align="center">
			<td><img src="data:image/jpg;base64,<%=List.getImage() %>"  alt="画像"></td>
			<td><%=List.getKind() %></td>
			<td><%=List.getBirthday() %></td>
			<td><%=List.getSex() %></td>
			<td><%=List.getUserArea() %></td>
			<td><%=List.getAnimalChar()%></td>
			<td style="font-size:1px;"><%=List.getContact() %></td>
		</tr>
		<%} %>
		<%}else{ %>
		<h1 class="header2"><%=error %></h1>
		<%} %>
	</table>

</article>

<p><a href="javascript:history.back()">&lt;&lt; 戻る</a></p>
<p><a href="home.jsp">&lt;&lt; ホームに戻る</a></p>
</div>
<!--/main-->
</div>
<!--/#contents-->

</div>
<!--/.inner-->

<footer>
<span class="pr"><a href="https://template-party.com/" target="_blank">Web Design:Template-Party</a></span>
</footer>

</div>
<!--/container-->

<!--ページの上部に戻る「↑」ボタン-->
<p class="nav-fix-pos-pagetop"><a href="#">↑</a></p>

<!--メニュー開閉ボタン-->
<div id="menubar_hdr" class="close"></div>
<!--メニューの開閉処理条件設定　800px以下-->
<script>
if (OCwindowWidth() <= 800) {
	open_close("menubar_hdr", "menubar-s");
}
</script>

</body>
</html>