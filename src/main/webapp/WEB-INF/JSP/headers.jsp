<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@ taglib prefix="vdab" uri="http://vdab.be/tags" %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<!DOCTYPE html>
<html lang='nl'>
<head>
  <vdab:head title="Headers"/>
</head>
<body>
	<vdab:menu/>
	Je browser wordt uitgevoerd op ${opWindows ? "Windows" : "een niet-Windows besturingssysteem"}.
</body>
</html>