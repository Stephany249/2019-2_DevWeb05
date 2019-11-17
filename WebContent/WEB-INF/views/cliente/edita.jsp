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
	  <title>Protocoli - Clientes</title>
	  <link href="<c:url value="/resources/vendor/fontawesome-free/css/all.min.css" />" rel="stylesheet" type="text/css">
	  <link href="<c:url value="/resources/vendor/datatables/dataTables.bootstrap4.css" />" rel="stylesheet">
	  <link href="<c:url value="/resources/css/sb-admin.css" />" rel="stylesheet">
	</head>
	
	<body>
		<c:import url="/resources/navbar.jsp"/>
		
		<h2>Editar Cadastro de ${cliente.nomeCliente}</h2>
		
		<form action="alterarCliente" method="post" class="form-horizontal">
		
					<input type="hidden" name="idCliente" value="${cliente.idCliente}"/><br/>
		
					<label for="NomeCliente">Nome do Cliente</label>  
					<input type="text" name="nomeCliente" value="${cliente.nomeCliente}" > 
					<form:errors path="cliente.nomeCliente" cssStyle="color:#B71C1C"/><br />
		
					<label for="CPF_CNPJCliente">CPF/CNPJ do Cliente</label>  
					<input type="text" name="CPF_CNPJCliente" value="${cliente.CPF_CNPJCliente}" >
					<form:errors path="cliente.CPF_CNPJCliente" cssStyle="color:#B71C1C"/><br />
					
					<label for="Telefone">Telefone</label>  
					<input type="text" name="telefone" value="${cliente.telefone}" >
					<form:errors path="cliente.telefone" cssStyle="color:#B71C1C"/><br />
					
					<label for="Endereco">Endereço</label>  
					<input type="text" name="endereco" value="${cliente.endereco}" >
					<form:errors path="cliente.endereco" cssStyle="color:#B71C1C"/><br />
					
					<label for="Email">E-mail</label>  
					<input type="text" name="email" value="${cliente.email}" >
					<form:errors path="cliente.email" cssStyle="color:#B71C1C"/><br />
					
					<label for="Senha">Senha</label>  
					<input type="password" name="senha" value="${cliente.senha}" >
					<form:errors path="cliente.senha" cssStyle="color:#B71C1C"/><br />
					
					<input type="hidden" name="IdEmpresa" value="${empresaLogada.idEmpresa}" >
					<form:errors path="cliente.IdEmpresa" cssStyle="color:#B71C1C"/><br />
			
	
		<input type="submit" value="Alterar">
		
		</form>
		
	</body>
</html>