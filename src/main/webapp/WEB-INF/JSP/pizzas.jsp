<%@ page contentType="text/html" pageEncoding="UTF-8" session="false" %>
<%@ taglib prefix="vdab" uri="http://vdab.be/tags" %>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix='spring' uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang='nl'>
<head>
  <vdab:head title="Pizza's"/>
</head>
<body>
  <vdab:menu/>
  <c:if test='${not empty param.boodschap}'>
    <div class='boodschap'>${param.boodschap}</div>
  </c:if>
  <h1>Pizza's
    <c:forEach begin='1' end='5'>
      &#9733; <%-- de html code van een ster --%>
    </c:forEach>
  </h1>
  <ul class='zebra'>
    <c:forEach var='pizza' items='${pizzas}'>
      <li>
      ${pizza.id}: <c:out value='${pizza.naam}'/> ${pizza.prijs} &euro;
        <c:choose>
          <c:when test='${pizza.pikant}'>
            pikant
          </c:when>
          <c:otherwise>
            niet pikant
          </c:otherwise>
        </c:choose>
        <spring:url value='/pizzas/{id}' var='url'>
          <spring:param name='id' value='${pizza.id}'/>
        </spring:url>
        <a href='${url}'>Detail</a>
      </li>
    </c:forEach>
  </ul>
  <script>
    document.getElementById('pizzaform').onsubmit = function() {
    	document.getElementById('toevoegknop').disabled = true;
    };
  </script>
</body>
</html>