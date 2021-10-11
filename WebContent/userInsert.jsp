<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ユーザーインサート画面</title>
</head>
<body>
<h1>ユーザーインサート画面</h1>

<form action="UserInsertConfirm" method="post">

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

<tr>
<th class="header">連絡方法</th>
<td>
<input type="text" name="contact">
</td>
</tr>

<tr>
<th class="header">地域</th>
<td>
<input type="text" name="user_area">
</td>
</tr>


</table>
<input type="submit" value="登録">

</form>

<table>
<a href="login.jsp">
<button type="button">戻る</button>
</a>
</table>

<table>
<a href="home.jsp">
<button type="button">ホーム</button>
</a>
</table>

</body>
</html>