<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista Itens</title>
</head>
<body>
	<div class="card mb-3">
		<div class="card-header">
			<i class="fas fa-table"></i> Lista de Itens
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered" id="dataTable" width="100%"
					cellspacing="0">
					<tr>
						<th>Id</th>
						<th>Nome Item</th>
						<th>Editar</th>
						<th>Excluir</th>
					</tr>
					<c:forEach items="${item}" var="item">
						<tr>
							<td>${item.id}</td>
							<td>${item.nomeItem}</td>
							<td><a href="editaItem?id=${item.id}" title="Editar"><i class="fas fa-pencil-alt"></i></a></td>
							<td><a href="removeItem?id=${item.id}" title="Excluir"><i class="fas fa-trash-alt"></i></a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
	<a href="novoItem"><i class="far fa-plus-square"></i> Cadastrar novo item</a>
</body>
</html>