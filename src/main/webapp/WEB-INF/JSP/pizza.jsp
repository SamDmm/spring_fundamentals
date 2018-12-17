<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="vdab" uri="http://vdab.be/tags" %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
 	<vdab:head title="${pizza.naam}"/>
</head>
<body>
	<vdab:menu/>
	<c:if test='${empty pizza}'>
		<h1>Pizza niet gevonden</h1>
	</c:if>
	<c:if test="${not empty pizza}">
		<h1>${pizza.naam}</h1>
		<dl><dt>Nummer</dt><dd>${pizza.id}</dd>
			<dt>Naam</dt><dd>${pizza.naam }</dd>
			<dt>Prijs</dt><dd><spring:eval expression="pizza.prijs"/></dd>
			<dt>In dollar</dt><dd><spring:eval expression="inDollar.waarde"/></dd>
			<dt>Pikant</dt><dd>${pizza.pikant ? 'ja' : 'nee' }</dd>
		</dl>
	</c:if>
</body>
</html>