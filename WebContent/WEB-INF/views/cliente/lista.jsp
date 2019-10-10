<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista Cliente</title>
</head>
<body>
<c:import url="/WEB-INF/views/principal/menu.jsp"/>
	<br />
	<a href="novoCliente">Cadastrar novo Cliente</a>
	<br />
	<br />
	<table>
		<tr>
			<th>Id</th>
			<th>Nome Cliente</th>
			<th>CPF/CNPJ Cliente</th>
			<th>Telefone</th>
			<th>E-mail</th>
			<th>Endereço</th>
			<th>Id Empresa</th>
			<th></th>
			<th></th>
		</tr>
		<c:forEach items="${cliente}" var="cliente">
			<tr>
				<td>${cliente.idCliente}</td>
				<td>${cliente.nomeCliente}</td>
				<td>${cliente.CPF_CNPJCliente}</td>
				<td>${cliente.telefone}</td>
				<td>${cliente.email}</td>
				<td>${cliente.endereco}</td>
				<td>${cliente.idEmpresa}</td>
				<td><a href="editaCliente?id=${cliente.idCliente}" title="Editar">Editar</a></td>
				<td><a href="removeCliente?id=${cliente.idCliente}" title="Excluir">Excluir</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>