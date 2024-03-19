<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>storeinput.jsp</title>
</head>
<body>
<form action="storesave" method="post">
	<table border="1" width="400px" align="center">
		<caption>상점자료입력</caption>
		<tr>
			<th>지점명</th>
			<td>
				<select name="place">
					<option value="서울">서울</option>
					<option value="수원">수원</option>
					<option value="인천">인천</option>
					<option value="부산">부산</option>
				</select>
			</td>
		</tr>
		<tr>
			<th>차량명</th>
			<td>
				<select name="carname">
					<option value="세단">세단</option>
					<option value="트럭">트럭</option>
					<option value="SUV">SUV</option>
					<option value="벤">벤</option>
				</select>
			</td>
		</tr>
		<tr>
			<th>수량</th>
			<td><input type="text" name="su"></td>
		</tr>
		<tr>
			<th>가격</th>
			<td><input type="text" name="price"></td>
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