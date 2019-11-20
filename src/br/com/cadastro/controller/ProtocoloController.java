package br.com.cadastro.controller;


import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.cadastro.dao.ClienteDAO;
import br.com.cadastro.dao.ProtocoloDAO;
import br.com.cadastro.model.Empresa;
import br.com.cadastro.model.Protocolo;

@Controller
public class ProtocoloController {

	@Autowired
	ProtocoloDAO daoProtocolo;
	ClienteDAO daoCliente;
	
	@RequestMapping("listaProtocolos")
	public String lista(Model modelProtocolo, HttpSession session) throws ClassNotFoundException{
		modelProtocolo.addAttribute("protocolo", daoProtocolo.lista((Empresa)session.getAttribute("empresaLogada")));
		return "../../resources/protocolos";
	}
	
	@RequestMapping("novoProtocolo")
	public String form() {
		return "protocolo/insere";
	}
	
	@RequestMapping("adicionaProtocolo")
	public String adiciona(@Valid Protocolo protocolo, BindingResult result) throws ClassNotFoundException{
		if(result.hasFieldErrors("origem") || result.hasFieldErrors("destino") || result.hasFieldErrors("dataProtocolo") || result.hasFieldErrors("idItem") || result.hasFieldErrors("observacoes") ) {
			return "protocolo/insere";
		}
		daoProtocolo.adiciona(protocolo);
		return "redirect:listaProtocolos";
	}
	
	@RequestMapping("editaProtocolo")
	public String edita(Long id, Model modelProtocolo) throws ClassNotFoundException{
		modelProtocolo.addAttribute("protocolo", daoProtocolo.buscarPorId(id));
		return "protocolo/edita";
	}
	
	@RequestMapping("alterarProtocolo")
	public String alterar(@Valid Protocolo protocolo, BindingResult result) throws ClassNotFoundException {
		if(result.hasFieldErrors("origem") || result.hasFieldErrors("destino") || result.hasFieldErrors("dataProtocolo") || result.hasFieldErrors("idItem") || result.hasFieldErrors("observacoes") ) {
			return "protocolo/edita";
		}
		daoProtocolo.alterar(protocolo);
		return "redirect:listaProtocolos";
	}
	
	@RequestMapping("removeProtocolo")
	public String remove(Protocolo protocolo) throws ClassNotFoundException{
		daoProtocolo.remove(protocolo);
		return "redirect:listaProtocolos";
	}
}
