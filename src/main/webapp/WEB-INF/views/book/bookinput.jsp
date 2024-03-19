<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bookinput.jsp</title>
</head>
<body>
<form action="booksave" method="post" enctype="multipart/form-data">
	<table border="1" width="400px" align="center">
		<caption>도서자료입력</caption> 
		<tr>
			<th>도서명</th>
			<td><input type="text" name="bname"> </td>
		</tr>
		<tr>
			<th>저자명</th>
			<td><input type="text" name="bwriter"> </td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea rows="5" cols="30" name="content"></textarea> </td>
		</tr>
		<tr>
			<th>가격</th>
			<td><input type="text" name="price"> </td>
		</tr>
		<tr>
			<th>표지</th>
			<td><input type="file" name="bpicture"> </td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="전송">
				<input type="reset" value="취소">
				<input type="button" value="메인으로" onclick="location.href='./main'">
			</td>
		</tr>
	</table>
</form>
</body>
</html>