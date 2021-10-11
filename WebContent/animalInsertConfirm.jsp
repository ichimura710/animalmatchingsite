<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "Servlet.AnimalInsertResult" %>
<%@ page import = "Servlet.AnimalInsert" %>



<% 	String kind = (String) request.getAttribute("kind");%>
<%	String birthday = (String) request.getAttribute("birthday");%>
<% String contact = (String)request.getAttribute("contact"); %>
<% String user_area = (String)request.getAttribute("user_area"); %>
<%	String sex = (String) request.getAttribute("sex");%>
<%	String image = (String) request.getAttribute("image");%>
<%	String animal_chara = (String) request.getAttribute("animal_chara");%>
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

<h2>動物登録確認</h2>



	<form action="AnimalInsertResult" method="post">

			<div>
				<label class="header1">分類</label>
				&emsp; &ensp;&emsp; &ensp;<input type="text" name="kind" readonly="readonly"
				class="readOnly" value="${kind }" />
			</div>

			<div>
				<label class="header1" >誕生日</label>
				&emsp; &ensp;<input type="text" name="birthday" readonly="readonly"
				class="readOnly" value="${birthday }" />
			</div>

			<div>
				<label class="header1">性別</label>
				 &emsp; &ensp;&emsp; &ensp;<input type="text" name="sex" readonly="readonly"
				class="readOnly" value="${sex }" />
			</div>
			<div>
				<label class="header1">連絡先</label>
				&emsp; &ensp;<input name="contact" readonly="readonly"value="${contact }" ></input>
			</div>
			<div>
				<label class="header1">地域</label>
				&emsp; &ensp;&emsp; &ensp;<input name="user_area" readonly="readonly" value="${user_area }" ></input>
			</div>


			<div>
				<label class="header1">画像</label>
				<img class="img01" src="data:image/jpg;base64,<%= image %>" />
				<input type="hidden" name="image" value=<%=image %> >
			</div>

			<div>
				<label class="header1">特徴</label>
				<textarea name="animal_chara" readonly="readonly"
				class="headerIn" >${animal_chara }</textarea>
			</div>

		<input class="search" type="submit" value="登録">
	</form>

</article>

<p><a href="javascript:history.back()">&lt;&lt; 戻る</a></p>

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