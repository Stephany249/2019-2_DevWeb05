<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cadastro Empresa</title>
</head>
<body>
<c:import url="/WEB-INF/views/principal/menu.jsp"/>
<br />
	
	Cadastro da Empresa <br /><br />
	
	<form action="adicionaEmpresa" method="post">
					
				<label for="NomeEmpresa">Nome Empresa</label>  
				<input type="text" name="nomeEmpresa" value="${empresa.nomeEmpresa}" >
				<form:errors path="empresa.nomeEmpresa" cssStyle="color:#B71C1C"/><br />
				
				<label for="NomeFantasia">Nome Fantasia</label>  
				<input type="text" name="nomeFantasia" value="${empresa.nomeFantasia}" >
				<form:errors path="empresa.nomeFantasia" cssStyle="color:#B71C1C"/><br />
				
				<label for="CNPJEmpresa">CNPJ Empresa</label>  
				<input type="text" name="CNPJEmpresa" value="${empresa.CNPJEmpresa}" >
				<form:errors path="empresa.CNPJEmpresa" cssStyle="color:#B71C1C"/><br />
				
				<label for="Telefone">Telefone</label>  
				<input type="text" name="telefone" value="${empresa.telefone}" >
				<form:errors path="empresa.telefone" cssStyle="color:#B71C1C"/><br />
				
				<label for="Email">E-mail</label>  
				<input type="text" name="email" value="${empresa.email}" >
				<form:errors path="empresa.email" cssStyle="color:#B71C1C"/><br />
				
				<label for="Senha">Senha</label>  
				<input type="password" name="senha" value="${empresa.senha}" >
				<form:errors path="empresa.senha" cssStyle="color:#B71C1C"/><br />
				
				<label for="Endereco">Endereço</label>  
				<input type="text" name="endereco" value="${empresa.endereco}" >
				<form:errors path="empresa.endereco" cssStyle="color:#B71C1C"/><br />
		
				<input type="submit" value="Criar">
		
	</form>
</body>
</html>