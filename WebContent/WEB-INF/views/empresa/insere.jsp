<form action="adicionaEmpresa" method="post">
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <div class="form-label-group">
                	<label for="NomeEmpresa">Nome Empresa</label>  
					<input type="text" id="NomeEmpresa" class="form-control" placeholder="Nome da Empresa" required="required" autofocus="autofocus" name="nomeEmpresa" value="${empresa.nomeEmpresa}" >
					<form:errors path="empresa.nomeEmpresa" cssStyle="color:#B71C1C"/>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-label-group">
                	<label for="NomeFantasia">Nome Fantasia</label>  
					<input type="text" id="NomeFantasia" class="form-control" placeholder="Nome Fantasia" required="required" autofocus="autofocus" name="nomeFantasia" value="${empresa.nomeFantasia}" >
					<form:errors path="empresa.nomeFantasia" cssStyle="color:#B71C1C"/>
                </div>
              </div>
            </div>
          </div>
          
          <div class="form-group">
            <div class="form-label-group">
            	<label for="Endereco">Endereço</label>  
				<input type="text" id="Endereco" class="form-control" placeholder="Endereço da Empresa" required="required" autofocus="autofocus" name="endereco" value="${empresa.endereco}" >
				<form:errors path="empresa.endereco" cssStyle="color:#B71C1C"/>
            </div>
          </div>
          
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <div class="form-label-group">
                	<label for="CNPJEmpresa">CNPJ da Empresa</label>  
					<input type="text" id="CNPJEmpresa" class="form-control" placeholder="CNPJ da Empresa" required="required" autofocus="autofocus" name="CNPJEmpresa" value="${empresa.CNPJEmpresa}" >
					<form:errors path="empresa.CNPJEmpresa" cssStyle="color:#B71C1C"/>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-label-group">
               		<label for="Telefone">Telefone</label>  
					<input type="text" id="Telefone" class="form-control" placeholder="Nome Fantasia" required="required" autofocus="autofocus" name="telefone" value="${empresa.telefone}" >
					<form:errors path="empresa.telefone" cssStyle="color:#B71C1C"/>
                </div>
              </div>
            </div>
          </div>
          
          <div class="form-group">
            <div class="form-label-group">
            	<label for="Email">E-mail</label>  
				<input type="text" id="Email" class="form-control" placeholder="Email" required="required" autofocus="autofocus" name="email" value="${empresa.email}" >
				<form:errors path="empresa.email" cssStyle="color:#B71C1C"/>
            </div>
          </div>

          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <div class="form-label-group">
                	<label for="Senha">Senha</label>  
					<input type="password" id="Senha" class="form-control" placeholder="Password" required="required" name="senha" value="${empresa.senha}" >
					<form:errors path="empresa.senha" cssStyle="color:#B71C1C"/>
                </div>
              </div>
            </div>
          </div>
          
          <input type="submit" class="btn btn-primary btn-block" href="loginForm" value="Criar Conta">
 
        </form> 
       <div class="text-center">
          <a class="d-block small mt-3" href="loginForm">Página de Login</a>
        </div>