<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>replyview.jsp</title>
</head>
<body>
<c:forEach items="${list }" var="aa">
	<form action="replysave" method="post">
		<input type="hidden" name="bnum" value="${aa.bnum }">
		<input type="hidden" name="groups" value="${aa.groups }">
		<input type="hidden" name="step" value="${aa.step }">
		<input type="hidden" name="indent" value="${aa.indent }">
		
		<table border="1" width="400px" align="center">
			<tr>
				<th>작성자</th>
				<td><input type="text" name="bwriter"> </td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" name="bname"> </td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea rows="10" cols="40" name="content"></textarea> </td>
			</tr>
			<tr>
			<td colspan="2" align="center">
				<input type="submit" value="댓글달기">
				<input type="button" value="도서자료출력으로" onclick="location.href='./bookout'">
				<input type="button" value="메인으로" onclick="location.href='./main'">
			</td>
		</tr>
		</table>
	</form>
</c:forEach> 
</body>
</html>