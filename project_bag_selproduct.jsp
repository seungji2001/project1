<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%request.setCharacterEncoding("utf-8"); %>
    <%
		int cnt;
		if(application.getAttribute("count") == null){
			cnt = 0;
		}
		else{
			Integer count = (Integer)application.getAttribute("count");
			cnt = count.intValue() + 1;
		}
		application.setAttribute("count",cnt);
	
		if(session.getAttribute("id") == null){
			session.setAttribute("id",request.getParameter("id"));
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style>
div{text-align:center;}
</style>
</head>
<body>
<div>
<p>
<c:if test="${sessionScope.id == '백승지' }">
	<c:import url="project_bag_manager.jsp" var="manager"/>
	<c:out value="${manager }" escapeXml="false"/>
</c:if>
<br>
<%=session.getAttribute("id") %>님 환영합니다.
<form action="project_bag_result.jsp">
	<select name="product">
		<option>apple</option>
		<option>strawberry</option>
		<option>orange</option>
		<option>grape</option>
	</select>
	<input type="text" name="num" placeholder="수량">
	<input type="hidden" name="status" value="login">
	<input type="submit" value="등록">
</form>
</div>
</body>
</html>