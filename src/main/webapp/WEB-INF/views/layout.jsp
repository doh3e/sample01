<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="t" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><t:insertAttribute name="title"/></title>
<style type="text/css">
#container 
{
	border: 1px solid #aabbcc;
}
header
{
	text-align: center;
	width: 100%;
}
#body
{
	text-align: center;
	width: 100%;
}
#footer
{
	position: fixed;
	bottom: 0px;
	width: 100%;
	text-align: center;
	font-size: 15px;
	line-height: 30px;
	background-color: #000000;
	color: #ffffff; 
}
</style>
</head>
<body>
   <div id="container">
      <div id="top">
         <t:insertAttribute name="top"/>
      </div>
      <div id="body">
         <t:insertAttribute name="body"/>
      </div>
      <div id="footer">
         <t:insertAttribute name="footer"/>
      </div>
   </div>
</body>
</html>