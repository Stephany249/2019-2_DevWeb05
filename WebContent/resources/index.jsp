<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="br">

	<head>
	  <meta charset="utf-8">
	  <meta http-equiv="X-UA-Compatible" content="IE=edge">
	  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	  <meta name="description" content="">
	  <meta name="author" content="">
	  <title>Protocoli - Início</title>
	  <link href="<c:url value="/resources/vendor/fontawesome-free/css/all.min.css" />" rel="stylesheet" type="text/css">
	  <link href="<c:url value="/resources/vendor/datatables/dataTables.bootstrap4.css" />" rel="stylesheet">
	  <link href="<c:url value="/resources/css/sb-admin.css" />" rel="stylesheet">
	</head>
	
	<body id="page-top">
		<c:import url="/resources/navbar.jsp"/>
		</div>
		
		<div id="content-wrapper">
			<div class="container-fluid">
			<h4>Olá ${empresaLogada.nomeEmpresa}. Seja bem-vindo(a) ao Protocoli.</h4><br>
			   <!-- Icon Cards-->
			      <div class="row">
			        <div class="col-xl-3 col-sm-6 mb-3">
			          <div class="card text-white bg-info o-hidden h-100">
			            <div class="card-body">
			              <div class="card-body-icon">
			                <i class="far fa-share-square"></i>
			              </div>
			              <div class="mr-5">Para emitir um novo protocolo.</div>
			            </div>
			            <a class="card-footer text-white clearfix small z-1" href="novoProtocolo">
			              <span class="float-left">Novo Protocolo</span>
			              <span class="float-right">
			                <i class="fas fa-angle-right"></i>
			              </span>
			            </a>
			          </div>
			        </div>
			        <div class="col-xl-3 col-sm-6 mb-3">
			          <div class="card text-white bg-info o-hidden h-100">
			            <div class="card-body">
			              <div class="card-body-icon">
			                <i class="fas fa-fw fa-list"></i>
			              </div>
			              <div class="mr-5">Para consultar o histórico de protocolos emitidos anteriormente.</div>
			            </div>
			            <a class="card-footer text-white clearfix small z-1" href="listaProtocolos">
			              <span class="float-left">Consultar Protocolos</span>
			              <span class="float-right">
			                <i class="fas fa-angle-right"></i>
			              </span>
			            </a>
			          </div>
			        </div>
			        <div class="col-xl-3 col-sm-6 mb-3">
			          <div class="card text-white bg-info o-hidden h-100">
			            <div class="card-body">
			              <div class="card-body-icon">
			                <i class="fas fa-user"></i>
			              </div>
			              <div class="mr-5">Para adicionar, remover ou consultar os seus clientes.</div>
			            </div>
			            <a class="card-footer text-white clearfix small z-1" href="listaClientes">
			              <span class="float-left">Gerenciar Clientes</span>
			              <span class="float-right">
			                <i class="fas fa-angle-right"></i>
			              </span>
			            </a>
			          </div>
			        </div>
			      </div>
	    	</div>
	 	 </div>
  
	  <!-- Scroll to Top Button-->
	  <a class="scroll-to-top rounded" href="#page-top">
	    <i class="fas fa-angle-up"></i>
	  </a>
	  <!-- Logout Modal-->
	  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	    <div class="modal-dialog" role="document">
	      <div class="modal-content">
	        <div class="modal-header">
	          <h5 class="modal-title" id="exampleModalLabel">Já vai sair?</h5>
	          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
	            <span aria-hidden="true">Ã—</span>
	          </button>
	        </div>
	        <div class="modal-body">Selecione "Sair" se você já está pronto(a) para encerrar a sessão atual.</div>
	        <div class="modal-footer">
	          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
	          <a class="btn btn-primary" href="logout">Logout</a>
	        </div>
	      </div>
	    </div>
	  </div>
	
	  <!-- Bootstrap core JavaScript-->
	  <script src="<c:url value="/resources/vendor/jquery/jquery.min.js" />" ></script>
	  <script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js" />" ></script>
	
	  <!-- Core plugin JavaScript-->
	  <script src="<c:url value="/resources/vendor/jquery-easing/jquery.easing.min.js" />" ></script>
	
	  <!-- Page level plugin JavaScript-->
	  <script src="<c:url value="/resources/vendor/chart.js/Chart.min.js" />" ></script>
	  <script src="<c:url value="/resources/vendor/datatables/jquery.dataTables.js" />" ></script>
	  <script src="<c:url value="/resources/vendor/datatables/dataTables.bootstrap4.js" />" ></script>
	
	  <!-- Custom scripts for all pages-->
	  <script src="<c:url value="/resources/js/sb-admin.min.js" />" ></script>
	
	  <!-- Demo scripts for this page-->
	  <script src="<c:url value="/resources/js/demo/datatables-demo.js" />" ></script>
	  <script src="<c:url value="/resources/js/demo/chart-area-demo.js" />" ></script>
	
	</body>
	
</html>
