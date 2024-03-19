<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="p" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
th,td{
text-align: center;
}

</style>
<meta charset="UTF-8">
<title>storepage.jsp</title>
</head>
<body>
<table border="1" width="500px" align="center">
	<caption>최대 매출액 의 사원번호</caption>
	<tr>
		
		<th>사원번호</th>		
		<th>판매액합계</th>
	</tr>
	<c:forEach items="${list }" var="aa">
		<tr>
			<td>${aa.snum }</td>
			<td><p:formatNumber value="${aa.totprice }" pattern="#,###"></p:formatNumber> </td>
		</tr>
	</c:forEach>
<!-- 페이징처리 -->	
<!-- 페이징처리 -->
</table>
</body>
</html>