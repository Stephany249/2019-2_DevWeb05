<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="br">

	<head>
	  <meta charset="utf-8">
	  <meta http-equiv="X-UA-Compatible" content="IE=edge">
	  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	  <meta name="description" content="">
	  <meta name="author" content="">
	  <title>Protocoli - Protocolos</title>
	  <link href="<c:url value="/resources/vendor/fontawesome-free/css/all.min.css" />" rel="stylesheet" type="text/css">
	  <link href="<c:url value="/resources/vendor/datatables/dataTables.bootstrap4.css" />" rel="stylesheet">
	  <link href="<c:url value="/resources/css/sb-admin.css" />" rel="stylesheet">
	</head>
	
	<body>
		<c:import url="/resources/navbar.jsp"/>
		<br />
			
			Emitir Novo Protocolo <br /><br />
			
			<form action="adicionaProtocolo" method="post">
							
						<label for="origem">Origem (id Empresa)</label>  
						<input type="text" name="origem" value="${protocolo.origem}" >
						<form:errors path="protocolo.origem" cssStyle="color:#B71C1C"/><br />
						
						<label for="destino">Destino (id Cliente)</label>  
						<input type="text" name="destino" value="${protocolo.destino}" >
						<form:errors path="protocolo.destino" cssStyle="color:#B71C1C"/><br />
						
						<label for="dataProtocolo">Data</label>  
						<input type="date" name="dataProtocolo" value="${protocolo.dataProtocolo}">
						<form:errors path="protocolo.dataProtocolo" cssStyle="color:#B71C1C"/><br />
						
						<label for="observacoes">Observações</label>  
						<input type="text" name="observacoes" value="${protocolo.observacoes}" >
						<form:errors path="protocolo.observacoes" cssStyle="color:#B71C1C"/><br />
						
						<input type="submit" value="Criar">
				
			</form>
		</body>
</html>