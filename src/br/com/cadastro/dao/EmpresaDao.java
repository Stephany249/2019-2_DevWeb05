package br.com.cadastro.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import br.com.cadastro.model.Empresa;

@Repository
public class EmpresaDao {
	Connection connection;
	
	@Autowired
	public EmpresaDao(DataSource dataSource) throws ClassNotFoundException{
		try {
            this.connection = dataSource.getConnection();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
	}
	
	public void adiciona(Empresa empresa) {
		String sql = "insert into empresas (nomeEmpresa, nomeFantasia, CNPJEmpresa, telefone, email, senha, endereco) " + 
					"values (?, ?, ?, ?, ?, MD5(?), ?)";
		
		try {
			PreparedStatement stmt = this.connection.prepareStatement(sql);
			stmt.setString(1, empresa.getNomeEmpresa());
			stmt.setString(2, empresa.getNomeFantasia());
			stmt.setString(3, empresa.getCNPJEmpresa());
			stmt.setString(4, empresa.getTelefone());
			stmt.setString(5, empresa.getEmail());
			stmt.setString(6, empresa.getSenha());
			stmt.setString(7, empresa.getEndereco());
			stmt.execute();
			stmt.close();
			
		}catch (SQLException e) {
			throw new RuntimeException (e);
		}
	}
	
	public List<Empresa> lista(){
		try {
			List<Empresa> empresas = new ArrayList<Empresa>();
			PreparedStatement stmt = this.connection.prepareStatement
			("SELECT * from empresas");
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next()) {
				Empresa empresa = new Empresa();
				
				empresa.setIdEmpresa(rs.getLong("id"));
				empresa.setNomeEmpresa(rs.getString("nomeEmpresa"));
				empresa.setNomeFantasia(rs.getString("nomeFantasia"));
				empresa.setCNPJEmpresa(rs.getString("CNPJEmpresa"));
				empresa.setTelefone(rs.getString("telefone"));
				empresa.setEmail(rs.getString("email"));
				empresa.setSenha(rs.getString("senha"));
				empresa.setEndereco(rs.getString("endereco"));
				empresas.add(empresa);
			}
			rs.close();
			stmt.close();
			return empresas;
			
		}catch(SQLException e){
			throw new RuntimeException(e);
		}
	}
	
	public void remove(Empresa empresa) {
		try{
			PreparedStatement stmt = this.connection.prepareStatement
			("delete from empresas where id = ?");
			
			stmt.setLong(1, empresa.getIdEmpresa());
			stmt.execute();
			stmt.close();

			
		}catch(SQLException e){
			throw new RuntimeException(e);
		}
	}
	
	public Empresa buscarPorId(Long id) {
		try{
			PreparedStatement stmt = this.connection.prepareStatement("select * from empresas");
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next())
			{
				if(id == rs.getLong("id"))
				{
					Empresa empresa = new Empresa();
					
					empresa.setIdEmpresa(rs.getLong("id"));
					empresa.setNomeEmpresa(rs.getString("nomeEmpresa"));
					empresa.setNomeFantasia(rs.getString("nomeFantasia"));
					empresa.setCNPJEmpresa(rs.getString("CNPJEmpresa"));
					empresa.setTelefone(rs.getString("telefone"));
					empresa.setEmail(rs.getString("email"));
					empresa.setEndereco(rs.getString("endereco"));
					
					return empresa;
				}
			}
			return null;
		}catch(SQLException e){
			throw new RuntimeException(e);
		}
	}
	
	public void alterar(Empresa empresa) {
		String sql = "update empresas set nomeEmpresa=?, nomeFantasia=?, CNPJEmpresa=?, telefone=?, email=?, senha=MD5(?), endereco=? where id=?";
		
		try {
			PreparedStatement stmt = this.connection.prepareStatement(sql);
			
			stmt.setString(1, empresa.getNomeEmpresa());
			stmt.setString(2, empresa.getNomeFantasia());
			stmt.setString(3, empresa.getCNPJEmpresa());
			stmt.setString(4, empresa.getTelefone());
			stmt.setString(5, empresa.getEmail());
			stmt.setString(6, empresa.getSenha());
			stmt.setString(7, empresa.getEndereco());
			stmt.setLong(8, empresa.getIdEmpresa());
			stmt.execute();
			stmt.close();
						
		}catch(SQLException e){
			throw new RuntimeException(e);
		}
	}
}
