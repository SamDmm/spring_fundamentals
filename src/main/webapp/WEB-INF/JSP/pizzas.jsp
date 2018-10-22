<%@ page contentType="text/html" pageEncoding="UTF-8" session="false" %>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang='nl'>
<head>
	<title>Pizza's</title>
	<c:import url='/WEB-INF/JSP/head.jsp'>
		<c:param name='title' value='Pizza Luigi'/>
	</c:import>
</head>
<body>
	<h1>Pizza's
		<c:forEach begin='1' end='5'>
			&#9733; <%-- de html code van een ster --%>
		</c:forEach>
	</h1>
	<ul class='zebra'>
		<c:forEach var='entry' items='${pizzas}'>
			<li>
			${entry.key}: <c:out value='${entry.value.naam}'/> ${entry.value.prijs} &euro;
				<c:choose>
					<c:when test='${entry.value.pikant}'>
						pikant
					</c:when>
					<c:otherwise>
						niet pikant
					</c:otherwise>
				</c:choose>
				<c:url value='/pizzas' var='url'>
					<c:param name='id' value='${entry.key}'/>
				</c:url>
				<a href='${url}'>Detail</a>
			</li>
		</c:forEach>
	</ul>
</body>
<c:import url='/WEB-INF/JSP/menu.jsp'/>
</html>