<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ログイン画面</title>
</head>
<body>
<h1>ログイン画面</h1>

<form action="MyPage" method="post">

<table>
<tr>
<th class="header">mail</th>
<td>
<input type="text" name="mail_address">
</td>
</tr>

<tr>
<th class="header">pass</th>
<td>
<input type="password" name="password">
</td>
</tr>
<input type="submit" value="ログイン">
</table>
</form>

<table>
<a href="UserInsert.jsp">
<button type="button">新規登録</button>
</a>
</table>

<table>
<a href="home.jsp">
<button type="button">ホーム</button>
</a>
</table>

</body>
</html>