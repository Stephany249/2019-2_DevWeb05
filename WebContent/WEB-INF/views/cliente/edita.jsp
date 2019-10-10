<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Alterar Cliente</title>
</head>
<body>
	<c:import url="/WEB-INF/views/principal/menu.jsp"/>
	<br />
	Alterar Cliente: ${cliente.idCliente}	
	<br />
	<br />
	
	<form action="alterarCliente" method="post" class="form-horizontal">
	
				<input type="hidden" name="id" value="${cliente.idCliente}"/><br/>
	
				<label for="NomeCliente">Nome Cliente</label>  
				<input type="text" name="nomeCliente" value="${cliente.nomeCliente}" > 
				<form:errors path="cliente.nomeCliente" cssStyle="color:#B71C1C"/><br />
	
				<label for="CPF_CNPJCliente">CPF/CNPJ Cliente</label>  
				<input type="text" name="CPF_CNPJCliente" value="${cliente.CPF_CNPJCliente}" >
				<form:errors path="cliente.CPF_CNPJCliente" cssStyle="color:#B71C1C"/><br />
				
				<label for="Telefone">Telefone</label>  
				<input type="text" name="telefone" value="${cliente.telefone}" >
				<form:errors path="cliente.telefone" cssStyle="color:#B71C1C"/><br />
				
				<label for="Email">E-mail</label>  
				<input type="text" name="email" value="${cliente.email}" >
				<form:errors path="cliente.email" cssStyle="color:#B71C1C"/><br />
				
				<label for="Senha">Senha</label>  
				<input type="password" name="senha" value="${cliente.senha}" >
				<form:errors path="cliente.senha" cssStyle="color:#B71C1C"/><br />
				
				<label for="Endereco">Endereço</label>  
				<input type="text" name="endereco" value="${cliente.endereco}" >
				<form:errors path="cliente.endereco" cssStyle="color:#B71C1C"/><br />
				
				<label for="IdEmpresa">Id Empresa</label>  
				<input type="text" name="IdEmpresa" value="${cliente.idEmpresa}" >
				<form:errors path="cliente.IdEmpresa" cssStyle="color:#B71C1C"/><br />
		

	<input type="submit" value="Alterar">
	
	</form>
	
</body>
</html>