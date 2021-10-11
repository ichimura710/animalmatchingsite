<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String error = (String) request.getAttribute("error");%>
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

<h2>動物登録完了</h2>
	<%if(error==null){ %>
	<h1 class="header2">動物の登録が完了しました！</h1>
	<%}else{ %>
	<h1 class="header2"><%=error %></h1>
		<%} %>
	<form action="home.jsp">
	<input class="searchR" type="submit" value="ホーム">
	</form>
	<form action="search.jsp">
	<input class="searchR" type="submit" value="動物検索">
	</form>

</article>



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