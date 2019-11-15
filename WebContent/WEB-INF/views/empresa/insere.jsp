<form action="adicionaEmpresa" method="post">
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <div class="form-label-group">
					<input type="text" id="NomeEmpresa" class="form-control" placeholder="Nome da Empresa" required="required" autofocus="autofocus" name="nomeEmpresa" value="${empresa.nomeEmpresa}" >
					<label for="NomeEmpresa">Nome da Empresa</label> 
					<form:errors path="empresa.nomeEmpresa" cssStyle="color:#B71C1C"/>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-label-group">
					<input type="text" id="NomeFantasia" class="form-control" placeholder="Nome Fantasia" required="required" autofocus="autofocus" name="nomeFantasia" value="${empresa.nomeFantasia}" >
					<label for="NomeFantasia">Nome Fantasia</label>  
					<form:errors path="empresa.nomeFantasia" cssStyle="color:#B71C1C"/>
                </div>
              </div>
            </div>
          </div>
          
          <div class="form-group">
            <div class="form-label-group">
				<input type="text" id="Endereco" class="form-control" placeholder="Endereço da Empresa" required="required" autofocus="autofocus" name="endereco" value="${empresa.endereco}" >
				<label for="Endereco">Endereço</label>
				<form:errors path="empresa.endereco" cssStyle="color:#B71C1C"/>
            </div>
          </div>
          
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <div class="form-label-group">
					<input type="text" id="CNPJEmpresa" class="form-control" placeholder="CNPJ da Empresa" required="required" autofocus="autofocus" name="CNPJEmpresa" value="${empresa.CNPJEmpresa}" >
					<label for="CNPJEmpresa">CNPJ</label>
					<form:errors path="empresa.CNPJEmpresa" cssStyle="color:#B71C1C"/>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-label-group">
					<input type="text" id="Telefone" class="form-control" placeholder="Nome Fantasia" required="required" autofocus="autofocus" name="telefone" value="${empresa.telefone}" >
					<label for="Telefone">Telefone</label> 
					<form:errors path="empresa.telefone" cssStyle="color:#B71C1C"/>
                </div>
              </div>
            </div>
          </div>
          
          <div class="form-group">
            <div class="form-label-group">
				<input type="text" id="Email" class="form-control" placeholder="Email" required="required" autofocus="autofocus" name="email" value="${empresa.email}" >
				<label for="Email">E-mail</label> 
				<form:errors path="empresa.email" cssStyle="color:#B71C1C"/>
            </div>
          </div>

          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <div class="form-label-group">
					<input type="password" id="Senha" class="form-control" placeholder="Password" required="required" name="senha" value="${empresa.senha}" >
					<label for="Senha">Senha</label> 
					<form:errors path="empresa.senha" cssStyle="color:#B71C1C"/>
                </div>
              </div>
            </div>
          </div>
          
          <input type="submit" class="btn btn-primary btn-block" value="Criar">
 
        </form> 