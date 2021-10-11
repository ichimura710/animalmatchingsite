<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ユーザーインサートコンフィーム画面</title>
</head>
<body>
<h1>ユーザーインサートコンフィーム画面</h1>

<form action="UserInsertResult" method="post" >
<table>
<tr>
<th class="header">mail</th>
<td>
<input type="text" name="mail_address" readonly="readonly" class="readOnly" value="${mail_address }" />
</td>
</tr>
<tr>
<th class="header">pass</th>
<td>
<input type="password" name="password" readonly="readonly" class="readOnly" value="${password }"/>
</td>
</tr>
<tr>
<th class="header">連絡方法</th>
<td>
<input type="text" name="contact" readonly="readonly" class="readOnly" value="${contact }" />
</td>
</tr>
<tr>
<th class="header">地域</th>
<td>
<input type="text" name="user_area" readonly="readonly" class="readOnly" value="${user_area }" />
</td>
</tr>
</table>

<input type="submit"  value="登録">

</form>

<form action="UserInsert"   method="post">
<input hidden type="text" name="mail" value="${mail }">
<input hidden type="text" name="pass" value="${pass }">
<input hidden type="text" name="contact" value="${contact }">
<input hidden type="text" name="user_area" value="${user_area }">
<input type="submit"  value="戻る">
</form>

<table>
<a href="home.jsp">
<button type="button">ホーム</button>
</a>
</table>

</body>
</html>