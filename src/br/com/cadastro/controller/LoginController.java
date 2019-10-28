package br.com.cadastro.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.cadastro.dao.LoginDAO;
import br.com.cadastro.model.Empresa;

@Controller
public class LoginController{

    @RequestMapping("loginForm") //envia para a mesma pagina
    public String loginForm() {
        return "../../resources/login";
    }
   
    @RequestMapping("efetuaLogin") //autentica e loga
    public String efetuaLogin(Empresa empresa, HttpSession session) throws ClassNotFoundException {
        if(new LoginDAO().existeEmpresa(empresa)) {
            session.setAttribute("empresaLogada", empresa);
            return "redirect:listaPrincipal";
        }
        return "redirect:loginForm";
    }
    
    @RequestMapping("logout") //desloga
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:loginForm";
    }
    
}