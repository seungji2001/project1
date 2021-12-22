<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <jsp:useBean class="p.project_bag_selproduct_data" id="data" scope="page"/>
     <jsp:setProperty name="data" property="*"/>
     <jsp:setProperty name="data" property="id" value="${sessionScope.id }"/>
      <jsp:useBean class="p.project_bag_selproduct_array" id="dataA" scope="application"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	if(request.getParameter("status").equals("login")){
		dataA.add(data);
		response.sendRedirect("main.jsp");
	}
	else if(request.getParameter("status").equals("logout")){
		session.invalidate();
		response.sendRedirect("main.jsp");
	}
%>
</body>
</html>