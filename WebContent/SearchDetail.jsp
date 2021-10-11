<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>サーチディテイル画面</title>
</head>
<body>
<h1>サーチディテイル画面</h1>


<form action="SeachResult"   method="post">
<input hidden type="text" name="kind" value="${kind }">
<input hidden type="text" name="birthday" value="${birthday }">
<input hidden type="text" name="sex" value="${sex }">
<input hidden type="text" name="user_area" value="${user_area }">
<input type="submit"  value="戻る">
</form>

<table>
<a href="search.jsp">
<button type="button">動物検索条件へ戻る</button>
</a>
</table>

<table>
<a href="home.jsp">
<button type="button">ホーム</button>
</a>
</table>

</body>
</html>