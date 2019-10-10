<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista Empresa</title>
</head>
<body>
<c:import url="/WEB-INF/views/principal/menu.jsp"/>
	<br />
	<a href="novaEmpresa">Cadastrar nova Empresa</a>
	<br />
	<br />
	<table>
		<tr>
			<th>Id</th>
			<th>Nome Empresa</th>
			<th>Nome Fantasia</th>
			<th>CNPJ Empresa</th>
			<th>Telefone</th>
			<th>E-mail</th>
			<th>Endereço</th>
			<th></th>
			<th></th>
		</tr>
		<c:forEach items="${empresa}" var="empresa">
			<tr>
				<td>${empresa.idEmpresa}</td>
				<td>${empresa.nomeEmpresa}</td>
				<td>${empresa.nomeFantasia}</td>
				<td>${empresa.CNPJEmpresa}</td>
				<td>${empresa.telefone}</td>
				<td>${empresa.email}</td>
				<td>${empresa.endereco}</td>
				<td><a href="editaEmpresa?id=${empresa.idEmpresa}" title="Editar">Editar</a></td>
				<td><a href="removeEmpresa?id=${empresa.idEmpresa}" title="Excluir">Excluir</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>