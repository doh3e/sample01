<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>top.jsp</title>
</head>
<body>
<header>
<h2>스프링 프레임워크 ver 1.0</h2>
</header>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"></a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="main">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">도서관리 <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="bookinput">도서자료입력</a></li>
          <li><a href="page">도서자료출력</a></li>
          <li><a href="booksearch">도서자료검색</a></li>
        </ul>
      </li>
    </ul>
    <ul class="nav navbar-nav">
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">상점관리 <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="storeinput">상점자료입력</a></li>
          <li><a href="storepage">상점자료출력</a></li>
          <li><a href="storepage1">지점별 판매액</a></li>
          <li><a href="storepage2">챠량별 판매액</a></li>
          <li><a href="storepage3">판매액이 가장많은 사원번호와 매출액</a></li>
          <li><a href="storepage4">판매액 내림차순출력</a></li>
           <li><a href="storepagepp">상점자료출력(페이징처리)</a></li>
         
        </ul>
      </li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
    
      <li><a href="memberinput"><span class="glyphicon glyphicon-user"></span> 회원가입</a></li>
      <li><a href="memberlogin"><span class="glyphicon glyphicon-log-in"></span> 로그인</a></li>
      
    </ul>
  </div>
</nav>
</body>
</html>