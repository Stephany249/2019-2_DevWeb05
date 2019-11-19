
<!-- Navbar Superior -->

<nav class="navbar navbar-expand navbar-dark bg-dark static-top">

	<a class="navbar-brand mr-1" href="listaPrincipal">Protocoli</a>
	<button class="btn btn-link btn-sm text-white order-1 order-sm-0"
		id="sidebarToggle" href="listaPrincipal">
		<i class="fas fa-bars"></i>
	</button>
	<form
		class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
	</form>
	<ul class="navbar-nav ml-auto ml-md-0">
		<li class="nav-item dropdown no-arrow">
			<a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fas fa-user-circle fa-fw"></i> </a>
			<div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
				<a class="dropdown-item" href="editaEmpresa?id=${empresaLogada.idEmpresa}">Configurações</a>
				<div class="dropdown-divider"></div>
				<!--  <a class="dropdown-item" href="logout">Sair</a>--> 
				<a class="dropdown-item" href="logout" data-toggle="modal" data-target="#logoutModal">Sair</a>
			</div>
		</li>
	</ul>

</nav>

<div id="wrapper">

	<!-- NavBar Lateral -->

	<ul class="sidebar navbar-nav">

		<li class="nav-item active"><a class="nav-link"
			href="listaPrincipal"> <i class="fa fa-home fa-fw"
				aria-hidden="true"></i> <span>Home</span>
		</a></li>

		<li class="nav-item"><a class="nav-link" href="listaClientes">
				<i class="far fa-address-card"></i> <span>Clientes</span>
		</a></li>

		<li class="nav-item"><a class="nav-link" href="listaProtocolos">
				<i class="fas fa-fw fa-table"></i> <span>Protocolos</span>
		</a></li>

		<li class="nav-item"><a class="nav-link" href="listaItens"> <i
				class="fas fa-fw fa-table"></i> <span>Itens</span></a></li>

	</ul>

	<div id="content-wrapper">

		<div class="container-fluid">