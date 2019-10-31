package br.com.cadastro.model;

public class Cliente {
    private Long idCliente;
    private String nomeCliente;
    private Long CPF_CNPJCliente;
    private Long telefone;
    private String email;
    private String senha;
    private String endereco;
    private Long IdEmpresa;

    public Long getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(Long idCliente) {
        this.idCliente = idCliente;
    }

    public String getNomeCliente() {
        return nomeCliente;
    }

    public void setNomeCliente(String nomeCliente) {
        this.nomeCliente = nomeCliente;
    }

    public Long getCPF_CNPJCliente() {
        return CPF_CNPJCliente;
    }

    public void setCPF_CNPJCliente(Long CPF_CNPJCliente) {
        this.CPF_CNPJCliente = CPF_CNPJCliente;
    }

    public Long getTelefone() {
        return telefone;
    }

    public void setTelefone(Long telefone) {
        this.telefone = telefone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

	public Long getIdEmpresa() {
		return IdEmpresa;
	}

	public void setIdEmpresa(Long idEmpresa) {
		IdEmpresa = idEmpresa;
	}
}
