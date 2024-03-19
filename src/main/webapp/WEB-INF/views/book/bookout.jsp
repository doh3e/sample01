<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bookout.jsp</title>
</head>
<body>
<table border="1" width="700px" align="center">
	<form action="page" method="post">
	   <tr>
	   <td>
		   <select name="cntPerPage" onchange="this.form.submit()">
		   		<option value="">게시물 보기</option>
		   		<option value="5">게시물 5개 보기</option>
		   		<option value="10">게시물 10개 보기</option>
		   		<option value="15">게시물 15개 보기</option>
		   </select> 
	   </td>
	   </tr>
	</form>
	<tr>
		<th>도서번호</th>
		<th>도서명</th>
		<th>저자명</th>
		<th>가격</th>
		<th>출판일자</th>
		<th>표지</th>
		<th>조회수</th>
		<th>Groups</th>
		<th>Step</th>
		<th>Indent</th>
	</tr>
	<c:forEach items="${list }" var="aa">
		<tr>
			<td>${aa.bnum } </td> 
			<td style="text-align: left;">
				<a href="detail?bnum=${aa.bnum }"> 
				<c:forEach var="i" begin="1" end="${aa.indent }">
				☞
				</c:forEach>
				${aa.bname }</a> 
			</td>
			<td>${aa.bwriter } </td>
			<td><f:formatNumber value="${aa.price }" pattern="#,###"></f:formatNumber></td>
			<td>${aa.day } </td>
			<td><img alt="" src="./image/${aa.bpicture }" width="40px" height="30px"></td>
			<td>${aa.count } </td>
			<td>${aa.groups } </td>
			<td>${aa.step } </td>
			<td>${aa.indent } </td>
			
		</tr>
		
	</c:forEach>
	<!-- 페이징처리 -->
	<tr style="border-left: none;border-right: none;border-bottom: none">
	   <td colspan="10" style="text-align: center;">
	   
	   <c:if test="${paging.startPage!=1 }"> <!-- 현재 페이지가 1페이지가 아니라면 -->
	      <a href="page?nowPage=${paging.startPage-1 }&cntPerPage=${paging.cntPerPage}">◀</a> <!--"page?nowPage=${paging.startPage-1 } = 시작 페이지에서 -1 빼서 넘김 -->
	      
	   </c:if>   
	   
	      <c:forEach begin="${paging.startPage }" end="${paging.endPage}" var="p"> 
	         <c:choose>
	            <c:when test="${p == paging.nowPage }"> <!-- 현재 페이지를 빨갛게 표시 -->
	               <b><span style="color: red;">${p}</span></b>
	            </c:when>   
	            <c:when test="${p != paging.nowPage }"> <!-- 현재 페이지가 아니면 페이지 정보를 넘김 -->
	               <a href="page?nowPage=${p}&cntPerPage=${paging.cntPerPage}">${p}</a>
	            </c:when>   
	         </c:choose>
	      </c:forEach>
	     
	      <c:if test="${paging.endPage != paging.lastPage}">
	      <a href="page?nowPage=${paging.endPage+1}&cntPerPage=${paging.cntPerPage }">▶</a>
	   </c:if>
	   
	   </td>
	</tr>
<!-- 페이징처리 -->
</table>
</body>
</html>