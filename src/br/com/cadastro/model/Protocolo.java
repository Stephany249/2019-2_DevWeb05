package br.com.cadastro.model;

import java.sql.Date;

public class Protocolo {
    private Long idProtocolo;
    private Long origem;
    private String nomeEmpresa;
    private Long destino;
    private String nomeCliente;
    private Date dataProtocolo;
    private Long idItem;
    private String nomeItem;
    private String observacoes;
     
	public String getNomeEmpresa() {
		return nomeEmpresa;
	}
	public void setNomeEmpresa(String nomeEmpresa) {
		this.nomeEmpresa = nomeEmpresa;
	}
	public String getNomeCliente() {
		return nomeCliente;
	}
	public void setNomeCliente(String nomeCliente) {
		this.nomeCliente = nomeCliente;
	}
	public Long getIdItem() {
		return idItem;
	}
	public void setIdItem(Long idItem) {
		this.idItem = idItem;
	}
	public String getNomeItem() {
		return nomeItem;
	}
	public void setNomeItem(String nomeItem) {
		this.nomeItem = nomeItem;
	}
	public Long getIdProtocolo() {
		return idProtocolo;
	}
	public void setIdProtocolo(Long idProtocolo) {
		this.idProtocolo = idProtocolo;
	}
	public Long getOrigem() {
		return origem;
	}
	public void setOrigem(Long origem) {
		this.origem = origem;
	}
	public Long getDestino() {
		return destino;
	}
	public void setDestino(Long destino) {
		this.destino = destino;
	}
	public Date getDataProtocolo() {
		return dataProtocolo;
	}
	public void setDataProtocolo(Date dataProtocolo) {
		this.dataProtocolo = dataProtocolo;
	}
	public String getObservacoes() {
		return observacoes;
	}
	public void setObservacoes(String observacoes) {
		this.observacoes = observacoes;
	}

}
