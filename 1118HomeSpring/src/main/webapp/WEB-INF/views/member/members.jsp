<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>맴버출력</title>
</head>
<body>
<c:forEach items="${all }" var="member">
	<ul>
		<li>
			번호: <c:out value="${member.mno }" />
			이름: <c:out value="${member.mname }" />
			비밀번호: <c:out value="${member.pwd }" />
			이메일: <c:out value="${member.email }" />
			작성일: <fmt:formatDate value="${member.cre_date }" pattern="yyyy-MM-dd" />
			수정일: <fmt:formatDate value="${member.mod_date }" pattern="yyyy-MM-dd" />
		</li>
		<br>
	
	</ul>
</c:forEach>

</body>
</html>