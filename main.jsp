<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@taglib tagdir="/WEB-INF/tags" prefix="ddwutag" %>
<!DOCTYPE html>
<html>
<head>
<style>
div{text-align:center}
table{margin:auto;}
table,th,td{border:1px solid black;}
td{width:100px;}
</style>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%
	if(session.isNew()){
		%>
			<form action="project_bag_selproduct.jsp">
			아이디:<input type="text" name="id">
			비밀번호:<input type="text" name="pwd">
			<input type="submit" value="로그인">
			</form>
		<%
	}
	else{
		%>
			<c:choose>
				<c:when test="${sessionScope.id == '백승지' }">
					<ddwutag:project_bag_result_table color="#E7E8ED">관리자 권한</ddwutag:project_bag_result_table>
				</c:when>
				<c:otherwise>
					<ddwutag:project_bag_result_table color="#F1E3D8"/>
				</c:otherwise>
			</c:choose>
		<%
	}
%>
</body>
</html>