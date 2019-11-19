package br.com.cadastro.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.cadastro.dao.ClienteDAO;
import br.com.cadastro.model.Cliente;
import br.com.cadastro.model.Empresa;

@Controller
public class ClienteController {

	@Autowired
	ClienteDAO daoCliente;
	
	@RequestMapping("listaClientes")
	public String lista(Model modelCliente, HttpSession session)throws ClassNotFoundException{
		modelCliente.addAttribute("cliente", daoCliente.lista((Empresa)session.getAttribute("empresaLogada")));
		return "../../resources/clientes";
	}
	
	@RequestMapping("novoCliente")
	public String form() {
		return "cliente/insere";
	}
	
	@RequestMapping("adicionaCliente")
	public String adiciona(@Valid Cliente cliente, BindingResult result) throws ClassNotFoundException{
		if(result.hasFieldErrors("nomeCliente") || result.hasFieldErrors("CPF_CNPJCliente") || result.hasFieldErrors("telefone") || result.hasFieldErrors("email") || result.hasFieldErrors("endereco")|| result.hasFieldErrors("IdEmpresa") ) {
			return "cliente/insere";
		}
		daoCliente.adiciona(cliente);
		return "redirect:listaClientes";
	}
	
	@RequestMapping("editaCliente")
	public String edita(Long id, Model modelCliente) throws ClassNotFoundException{
		modelCliente.addAttribute("cliente", daoCliente.buscarPorId(id));
		return "cliente/edita";
	}
	
	@RequestMapping("alterarCliente")
	public String alterar(@Valid Cliente cliente, BindingResult result) throws ClassNotFoundException {
		if(result.hasFieldErrors("nomeCliente") || result.hasFieldErrors("CPF_CNPJCliente") || result.hasFieldErrors("telefone") || result.hasFieldErrors("email") || result.hasFieldErrors("endereco")|| result.hasFieldErrors("IdEmpresa") ) {
			return "cliente/edita";
		}
		daoCliente.alterar(cliente);
		return "redirect:listaClientes";
	}
	
	@RequestMapping("removeCliente")
	public String remove(Cliente cliente) throws ClassNotFoundException{
		daoCliente.remove(cliente);
		return "redirect:listaClientes";
	}
}
