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
	<caption>상점자료출력</caption>
	<tr>
		<th>사원번호</th>
		<th>지점명</th>
		<th>차량명</th>
		<th>수량</th>
		<th>가격</th>
		<th>판매액</th>
	</tr>
	<c:forEach items="${list }" var="aa">
		<tr>
			<td>${aa.snum }</td>
			<td>${aa.place }</td>
			<td>${aa.carname }</td>
			<td>${aa.su }</td>
			<td><p:formatNumber value="${aa.price }" pattern="#,###"></p:formatNumber></td>
			<td><p:formatNumber value="${aa.totprice }" pattern="#,###"></p:formatNumber> </td>
		</tr>
	</c:forEach>

<!--페이징처리 6단계  -->
 <tr style="border-left: none;border-right: none;border-bottom: none">
   <td colspan="65" style="text-align: center;">
   
   <c:if test="${paging.startPage!=1 }">
      <a href="storepagepp?nowPage=${paging.startPage-1 }&cntPerPage=${paging.cntPerPage}">◀</a>
      
   </c:if>   
   
      <c:forEach begin="${paging.startPage }" end="${paging.endPage}" var="p"> 
         <c:choose>
            <c:when test="${p == paging.nowPage}">
               <b><span style="color: red;">${p}</span></b>
            </c:when>   
            <c:when test="${p != paging.nowPage }">
               <a href="storepagepp?nowPage=${p}&cntPerPage=${paging.cntPerPage}">${p}</a>
            </c:when>   
         </c:choose>
      </c:forEach>
     
      <c:if test="${paging.endPage != paging.lastPage}">
      <a href="storepagepp?nowPage=${paging.endPage+1}&cntPerPage=${paging.cntPerPage }">▶</a>
   </c:if>
   
   </td>
</tr>
<!-- 페이징처리 끝 -->

</table>
</body>
</html>