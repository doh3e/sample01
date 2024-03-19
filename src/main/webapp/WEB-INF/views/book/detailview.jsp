<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>detailview.jsp</title>
</head>
<body>
<c:forEach items="${list }" var="aa">
	<form action="reply" method="post">
		<table border="1" width="400px" align="center">
			<caption>도서자료상세보기</caption>
			<tr>
				<th>도서번호</th>
				<td><input type="text" name="bnum" value="${aa.bnum }" readonly> </td>
			</tr>
			<tr>
				<th>도서명</th>
				<td><input type="text" name="bname" value="${aa.bname }" readonly> </td>
			</tr>
			<tr>
				<th>저자명</th>
				<td><input type="text" name="bwriter" value="${aa.bwriter }" readonly> </td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea rows="10" cols="40" name="content" readonly>${aa.content }</textarea> </td>
			</tr>
			<tr>
				<th>표지</th>
				<td><img alt="" src="./image/${aa.bpicture }" width="40px" height="30px"> </td>
			</tr>
			<td colspan="2" align="center">
				<input type="submit" value="댓글달기">
				<input type="button" value="도서자료출력으로" onclick="location.href='./bookout'">
				<input type="button" value="메인으로" onclick="location.href='./main'">
			</td>
		</table>
	</form>
</c:forEach>
</body>
</html>