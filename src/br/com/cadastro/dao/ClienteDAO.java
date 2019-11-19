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

import br.com.cadastro.model.Cliente;
import br.com.cadastro.model.Empresa;

@Repository
public class ClienteDAO {
	Connection connection;

	@Autowired
	public ClienteDAO(DataSource dataSource) throws ClassNotFoundException{
		try {
            this.connection = dataSource.getConnection();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
	}
	
	public void adiciona(Cliente cliente) {
		String sql = "insert into clientes (nomeCliente, CPF_CNPJCliente, telefone, email, endereco, IdEmpresa) " + 
					"values (?, ?, ?, ?, ?, ?)";
		
		try {
			PreparedStatement stmt = this.connection.prepareStatement(sql);
			stmt.setString(1, cliente.getNomeCliente());
			stmt.setLong(2, cliente.getCPF_CNPJCliente());
			stmt.setLong(3, cliente.getTelefone());
			stmt.setString(4, cliente.getEmail());
			stmt.setString(5, cliente.getEndereco());
			stmt.setLong(6, cliente.getIdEmpresa());
			stmt.execute();
			stmt.close();
			
		}catch (SQLException e) {
			throw new RuntimeException (e);
		}
	}
	
	public List<Cliente> lista(Empresa empresa){
		try {
			List<Cliente> clientes = new ArrayList<Cliente>();
			String sql = "select * from clientes where idEmpresa= ?";
			PreparedStatement stmt = this.connection.prepareStatement(sql);
			stmt.setLong(1, empresa.getIdEmpresa());
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next()) {
				Cliente cliente = new Cliente();
				
				cliente.setIdCliente(rs.getLong("id"));
				cliente.setNomeCliente(rs.getString("nomeCliente"));
				cliente.setCPF_CNPJCliente(rs.getLong("CPF_CNPJCliente"));
				cliente.setTelefone(rs.getLong("telefone"));
				cliente.setEmail(rs.getString("email"));
				cliente.setEndereco(rs.getString("endereco"));
				cliente.setIdEmpresa(rs.getLong("IdEmpresa"));
				clientes.add(cliente);
			}
			rs.close();
			stmt.close();
			return clientes;
			
		}catch(SQLException e){
			throw new RuntimeException(e);
		}
	}
	
	public void remove(Cliente cliente) {
		try{
			PreparedStatement stmt = this.connection.prepareStatement
			("delete from clientes where id = ?");
			
			stmt.setLong(1, cliente.getIdCliente());
			stmt.execute();
			stmt.close();

			
		}catch(SQLException e){
			throw new RuntimeException(e);
		}
	}
	
	public Cliente buscarPorId(Long id) {
		try{
			PreparedStatement stmt = this.connection.prepareStatement("select * from clientes");
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next())
			{
				if(id == rs.getLong("id"))
				{
					Cliente cliente = new Cliente();
					
					cliente.setIdCliente(rs.getLong("id"));
					cliente.setNomeCliente(rs.getString("nomeCliente"));
					cliente.setCPF_CNPJCliente(rs.getLong("CPF_CNPJCliente"));
					cliente.setTelefone(rs.getLong("telefone"));
					cliente.setEmail(rs.getString("email"));
					cliente.setEndereco(rs.getString("endereco"));
					cliente.setIdEmpresa(rs.getLong("IdEmpresa"));
					
					return cliente;
				}
			}
			return null;
			
		}catch(SQLException e){
			throw new RuntimeException(e);
		}
	}
	
	public void alterar(Cliente cliente) {
		String sql = "update clientes set nomeCliente=?, CPF_CNPJCliente=?, telefone=?, email=?, endereco=?, IdEmpresa=? where id = ?";
		
		try {
			PreparedStatement stmt = this.connection.prepareStatement(sql);
			
			stmt.setString(1, cliente.getNomeCliente());
			stmt.setLong(2, cliente.getCPF_CNPJCliente());
			stmt.setLong(3, cliente.getTelefone());
			stmt.setString(4, cliente.getEmail());
			stmt.setString(5, cliente.getEndereco());
			stmt.setLong(6, cliente.getIdEmpresa());
			stmt.setLong(7, cliente.getIdCliente());
			stmt.execute();
			stmt.close();
			
			
		}catch(SQLException e){
			throw new RuntimeException(e);
		}
	}
}
