package br.com.cadastro.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import br.com.cadastro.jdbc.ConnectionFactory;
import br.com.cadastro.model.Empresa;

public class LoginDAO {
	
	Connection connection;
	
	public LoginDAO() throws ClassNotFoundException{
		this.connection = new ConnectionFactory().getConnection();
	}
	
	public boolean existeEmpresa(Empresa empresa){
		
			String sql = "select * from empresas where email= ? and senha = MD5(?)";
			
			try{
			PreparedStatement stmt = this.connection.prepareStatement(sql);
			
			stmt.setString(1, empresa.getEmail());
			stmt.setString(2, empresa.getSenha());
			
			ResultSet rs = stmt.executeQuery();
			stmt.execute();
			
			if(rs.next())
			{
				empresa.setIdEmpresa(rs.getLong("id"));
				empresa.setNomeEmpresa(rs.getString("nomeEmpresa"));
				stmt.close();
				return true;
			}
			else
			{
				stmt.close();
				return false;
			}
			
		}catch(SQLException e){
			throw new RuntimeException(e);
		}
	}
	
}
