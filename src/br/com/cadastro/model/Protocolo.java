package br.com.cadastro.model;

import java.util.Calendar;

public class Protocolo {
    private Long idProtocolo;
    private Long origem;
    private Long destino;
    private Calendar dataProtocolo;
    private String observacoes;
    
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
	public Calendar getDataProtocolo() {
		return dataProtocolo;
	}
	public void setDataProtocolo(Calendar dataProtocolo) {
		this.dataProtocolo = dataProtocolo;
	}
	public String getObservacoes() {
		return observacoes;
	}
	public void setObservacoes(String observacoes) {
		this.observacoes = observacoes;
	}


}
