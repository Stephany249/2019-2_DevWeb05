package br.com.cadastro.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.cadastro.dao.EmpresaDao;
import br.com.cadastro.model.Empresa;

@Controller
public class EmpresaController {
	
	@Autowired
	EmpresaDao daoEmpresa;
	
	@RequestMapping("listaEmpresas")
	public String lista(Model modelEmpresa)throws ClassNotFoundException{
		modelEmpresa.addAttribute("empresa", daoEmpresa.lista());
		return "../../resources/empresas";
	}
	
	@RequestMapping("novaEmpresa")
	public String form() {
		return "empresa/insere";
	}
	
	@RequestMapping("adicionaEmpresa")
	public String adiciona(@Valid Empresa empresa, BindingResult result) throws ClassNotFoundException{
		if(result.hasFieldErrors("nomeEmpresa") || result.hasFieldErrors("nomeFantasia") || result.hasFieldErrors("CNPJEmpresa") || result.hasFieldErrors("telefone") || result.hasFieldErrors("email") || result.hasFieldErrors("senha") || result.hasFieldErrors("endereco")) {
			return "empresa/insere";
		}
		daoEmpresa.adiciona(empresa);
		return "redirect:listaEmpresas";
	}
	
	@RequestMapping("editaEmpresa")
	public String edita(Long id, Model modelEmpresa) throws ClassNotFoundException{
		modelEmpresa.addAttribute("empresa", daoEmpresa.buscarPorId(id));
		return "empresa/edita";
	}
	
	@RequestMapping("alterarEmpresa")
	public String alterar(@Valid Empresa empresa, BindingResult result) throws ClassNotFoundException {
		if(result.hasFieldErrors("nomeEmpresa") || result.hasFieldErrors("nomeFantasia") || result.hasFieldErrors("CNPJEmpresa") || result.hasFieldErrors("telefone") || result.hasFieldErrors("email") || result.hasFieldErrors("senha") || result.hasFieldErrors("endereco")) {
			return "empresa/edita";
		}
		daoEmpresa.alterar(empresa);
		return "redirect:listaEmpresas";
	}
	
	@RequestMapping("removeEmpresa")
	public String remove(Empresa empresa) throws ClassNotFoundException{
		daoEmpresa.remove(empresa);
		return "redirect:listaEmpresas";
	}
}
