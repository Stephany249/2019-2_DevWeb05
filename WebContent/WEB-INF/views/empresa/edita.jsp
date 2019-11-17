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
		<title>Protocoli - Configurações</title>
		<link href="<c:url value="/resources/vendor/fontawesome-free/css/all.min.css" />" rel="stylesheet" type="text/css">
		<link href="<c:url value="/resources/vendor/datatables/dataTables.bootstrap4.css" />" rel="stylesheet">
		<link href="<c:url value="/resources/css/sb-admin.css" />" rel="stylesheet">
	</head>
	
	<body>
		<c:import url="/resources/navbar.jsp"/>
		<h2>Configurações</h2>
		<h5>Alterar o valor dos campos abaixo atualizará o seu cadastro!</h5>
		<br>
		
		<form action="alterarEmpresa" method="post" class="form-horizontal">
		
					<input type="hidden" name="idEmpresa" value="${empresa.idEmpresa}" />
		
					<label for="NomeEmpresa">Nome da Empresa</label>  
					<input type="text" name="nomeEmpresa" value="${empresa.nomeEmpresa}" > 
					<form:errors path="empresa.nomeEmpresa" cssStyle="color:#B71C1C"/><br />
	
					<label for="NomeFantasia">Nome Fantasia</label>  
					<input type="text" name="nomeFantasia" value="${empresa.nomeFantasia}" >
					<form:errors path="empresa.nomeFantasia" cssStyle="color:#B71C1C"/><br />
					
					<label for="CNPJEmpresa">CNPJ da Empresa</label>  
					<input type="text" name="CNPJEmpresa" value="${empresa.CNPJEmpresa}" >
					<form:errors path="empresa.CNPJEmpresa" cssStyle="color:#B71C1C"/><br />
					
					<label for="Telefone">Telefone</label>  
					<input type="text" name="telefone" value="${empresa.telefone}" >
					<form:errors path="empresa.telefone" cssStyle="color:#B71C1C"/><br />
					
					<label for="Endereco">Endereço</label>  
					<input type="text" name="endereco" value="${empresa.endereco}" >
					<form:errors path="empresa.endereco" cssStyle="color:#B71C1C"/><br />
					
					<label for="Email">E-mail</label>  
					<input type="text" name="email" value="${empresa.email}" >
					<form:errors path="empresa.email" cssStyle="color:#B71C1C"/><br />
					
					<label for="Senha">Senha</label>  
					<input type="password" name="senha" value="${empresa.senha}" >
					<form:errors path="empresa.senha" cssStyle="color:#B71C1C"/><br />
			
		<input type="submit" value="Alterar">
		
		</form>
		
	</body>
</html>