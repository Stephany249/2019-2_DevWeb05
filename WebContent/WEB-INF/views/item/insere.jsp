<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="description" content="">
		<meta name="author" content="">
		<title>Protocoli - Itens</title>
		<link href="<c:url value="/resources/vendor/fontawesome-free/css/all.min.css" />" rel="stylesheet" type="text/css">
		<link href="<c:url value="/resources/vendor/datatables/dataTables.bootstrap4.css" />" rel="stylesheet">
		<link href="<c:url value="/resources/css/sb-admin.css" />" rel="stylesheet">
	</head>
		
	<body>
		<c:import url="/resources/navbar.jsp"/>
			
		<h2>Cadastro de Item</h2>
		<br>
		<form action="adicionaItem" method="post">		
			<label for="NomeItem">Nome do Item: </label>  
			<input type="text" name="nomeItem" value="${item.nomeItem}" >
			<form:errors path="item.nomeItem" cssStyle="color:#B71C1C"/>
			<br><br>
			<input type="submit" value="Cadastrar">
		</form>
		
	</body>
</html>