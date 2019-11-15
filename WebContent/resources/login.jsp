<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html lang="br">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Protocoli - Login</title>

  <!-- Custom fonts for this template-->
  <link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/fontawesome-free/css/all.min.css" />" />

  <!-- Custom styles for this template-->
  <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/sb-admin.css" />" />
  
  
</head>

<body class="bg-dark">

  <div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header">Login</div>
      <div class="card-body">
        <form action="efetuaLogin" method="post">
          <div class="form-group">
          	<div class="text-center">
          		<h1 class="h4 text-gray-900 mb-4">Bem-Vindo :)</h1>
          	</div>
            <div class="form-label-group">
              <input name="email" id="inputEmail" class="form-control" placeholder="Email address" required="required" autofocus="autofocus">
              <label for="inputEmail">E-mail</label>
            </div>
          </div>
          <div class="form-group">
            <div class="form-label-group">
              <input name="senha" type="password" id="inputPassword" class="form-control" placeholder="Password" required="required">
              <label for="inputPassword">Senha</label>
            </div>
          </div>
          <input type="submit" value="Entrar" class="btn btn-primary btn-block">
        </form>
        <div class="text-center">
          <a class="d-block small mt-3" href="novaEmpresa">Criar uma conta</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="<c:url value="/resources/vendor/jquery/jquery.min.js" />"></script>
  <script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js" />" ></script>

  <!-- Core plugin JavaScript-->
  <script src="<c:url value="/resources/vendor/jquery-easing/jquery.easing.min.js" />" ></script>

</body>

</html>
