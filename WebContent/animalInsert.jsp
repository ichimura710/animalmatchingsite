<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="Servlet.AnimalInsertConfirm"%>
<% String kind = (String)request.getAttribute("kind"); %>
<% String birthday = (String)request.getAttribute("birthday"); %>
<% String contact = (String)request.getAttribute("contact"); %>
<% String sex = (String)request.getAttribute("sex"); %>
<% String user_area = (String)request.getAttribute("user_area"); %>
<% String image = (String)request.getAttribute("image"); %>
<% String animal_chara = (String)request.getAttribute("animal_chara"); %>

<% if(kind == null){ %>
<%kind = ""; %>
<%} %>

<% if(birthday == null){ %>
<%birthday = ""; %>
<%} %>

<% if(sex == null){ %>
<%sex = ""; %>
<%} %>

<% if(image == null){ %>
<%image = ""; %>
<%} %>

<% if(animal_chara == null){ %>
<%animal_chara = ""; %>
<%} %>

<% if(contact == null){ %>
<%contact = ""; %>
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

<h2>動物登録</h2>



	<form action="AnimalInsertConfirm" method="post" enctype="multipart/form-data">

			<div>
				<label class="header1">分類</label>
				&emsp; &ensp;&emsp; &ensp;<select class="selectBox" name="kind" value="${kind }" >
					<option value="" style="display: none;">選択してください</option>
					<option value="猫">猫</option>
					<option value="犬">犬</option>
					<option value="鳥">鳥</option>
				</select>
			</div>

			<div>
				<label class="header1" >誕生日</label>
				&emsp; &ensp;<input type="text" name="birthday" value="<%=birthday %>"placeholder="2021/1/1">
			</div>

			<div>
				<label class="header1">性別</label>

				&emsp; &ensp;&emsp; &ensp;<select class="selectBox" name="sex" value="${sex }">
					<option value="" style="display: none;">選択してください</option>
					<option value="オス">オス</option>
					<option value="メス">メス</option>

				</select>
			</div>
			<div>
				<label class="header1">連絡先</label>
				&emsp; &ensp;<input size="30" type="text"name="contact"  value="<%=contact %>" placeholder="電話番号かメールアドレス">
			</div>
			<div>
				<label class="header1">地域</label>
				&emsp; &emsp; &ensp;&thinsp;
				<select class="selectBox" name="user_area" value="${user_area }">
					<option value="" style="display: none;">選択してください</option>
					<optgroup label="北海道・東北">
					<option value="北海道">北海道</option>
					<option value="青森">青森</option>
					<option value="秋田">秋田</option>
					<option value="岩手">岩手</option>
					<option value="山形">山形</option>
					<option value="宮城">宮城</option>
					<option value="福島">福島</option>
					</optgroup>
					<optgroup label="関東">
					<option value="茨城">茨城</option>
					<option value="栃木">栃木</option>
					<option value="群馬">群馬</option>
					<option value="埼玉">埼玉</option>
					<option value="千葉">千葉</option>
					<option value="東京">東京</option>
					<option value="神奈川">神奈川</option>
					</optgroup>
					<optgroup label="中部">
					<option value="新潟">新潟</option>
					<option value="富山">富山</option>
					<option value="石川">石川</option>
					<option value="福井">福井</option>
					<option value="山梨">山梨</option>
					<option value="長野">長野</option>
					<option value="岐阜">岐阜</option>
					<option value="静岡">静岡</option>
					<option value="愛知">愛知</option>
					</optgroup>
					<optgroup label="近畿">
					<option value="三重">三重</option>
					<option value="滋賀">滋賀</option>
					<option value="京都">京都</option>
					<option value="大阪">大阪</option>
					<option value="兵庫">兵庫</option>
					<option value="奈良">奈良</option>
					<option value="和歌山">和歌山</option>
					</optgroup>
					<optgroup label="中国・四国">
					<option value="鳥取">鳥取</option>
					<option value="島根">島根</option>
					<option value="岡山">岡山</option>
					<option value="広島">広島</option>
					<option value="山口">山口</option>
					<option value="香川">香川</option>
					<option value="愛媛">愛媛</option>
					<option value="徳島">徳島</option>
					<option value="高知">高知</option>
					</optgroup>
					<optgroup label="九州・沖縄">
					<option value="福岡">福岡</option>
					<option value="大分">大分</option>
					<option value="佐賀">佐賀</option>
					<option value="長崎">長崎</option>
					<option value="熊本">熊本</option>
					<option value="宮崎">宮崎</option>
					<option value="鹿児島">鹿児島</option>
					<option value="沖縄">沖縄</option>
					</optgroup>

				</select>
			</div>

			<div>
				<label class="header1">画像</label>
				&emsp; &ensp;&emsp; &ensp;<input type="file" name="file" value=<%=image %> >
			</div>
			<div>
				<label class="header1">特徴</label>
				<textarea class="headerIn"  name="animal_chara" placeholder="特徴を入力してください"><%=animal_chara %></textarea>

			</div>

		<input class="search" type="submit" value="登録確認">
	</form>

</article>

<p><a href="javascript:history.back()">&lt;&lt; ホームに戻る</a></p>

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