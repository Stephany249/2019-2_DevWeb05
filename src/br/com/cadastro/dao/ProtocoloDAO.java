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
import br.com.cadastro.model.Item;
import br.com.cadastro.model.Protocolo;

@Repository
public class ProtocoloDAO {
	Connection connection;

	@Autowired
	public ProtocoloDAO(DataSource dataSource) throws ClassNotFoundException {
		try {
			this.connection = dataSource.getConnection();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void adiciona(Protocolo protocolo) {
		String sql = "insert into protocolos (origem, destino, dataProtocolo, idItem, observacoes) " + "values (?, ?, ?, ?, ?)";

		try {
			PreparedStatement stmt = this.connection.prepareStatement(sql);
			stmt.setLong(1, protocolo.getOrigem());
			stmt.setLong(2, protocolo.getDestino());
			stmt.setDate(3, protocolo.getDataProtocolo());
			stmt.setLong(4, protocolo.getIdItem());
			stmt.setString(5, protocolo.getObservacoes());
			stmt.execute();
			stmt.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<Protocolo> lista(Empresa empresa) {
		try {
			List<Protocolo> protocolos = new ArrayList<Protocolo>();
			List<Empresa> empresas = new ArrayList<Empresa>();
			String sql = "SELECT protocolos.id, empresas.nomeEmpresa, clientes.nomeCliente, protocolos.dataProtocolo, itens.nomeItem, protocolos.observacoes "
					+ "from clientes join protocolos join empresas join itens where protocolos.origem = ? "
					+ "and protocolos.origem = empresas.id and (protocolos.destino = clientes.id) and (protocolos.idItem = itens.id)";
			PreparedStatement stmt = this.connection.prepareStatement(sql);
			stmt.setLong(1, empresa.getIdEmpresa());
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				Protocolo protocolo = new Protocolo();
				
				protocolo.setIdProtocolo(rs.getLong("id"));
				protocolo.setNomeEmpresa(rs.getString("nomeEmpresa"));
				protocolo.setNomeCliente(rs.getString("nomeCliente"));
				protocolo.setNomeItem(rs.getString("nomeItem"));
				protocolo.setDataProtocolo(rs.getDate("dataProtocolo"));
				protocolo.setObservacoes(rs.getString("observacoes"));
				protocolos.add(protocolo);

			}
			rs.close();
			stmt.close();
			return protocolos;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void remove(Protocolo protocolo) {
		try {
			PreparedStatement stmt = this.connection.prepareStatement("delete from protocolos where id = ?");

			stmt.setLong(1, protocolo.getIdProtocolo());
			stmt.execute();
			stmt.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public Protocolo buscarPorId(Long id) {
		try {
			PreparedStatement stmt = this.connection.prepareStatement("select * from protocolos");
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				if (id == rs.getLong("id")) {
					Protocolo protocolo = new Protocolo();

					protocolo.setIdProtocolo(rs.getLong("id"));
					protocolo.setOrigem(rs.getLong("origem"));
					protocolo.setDestino(rs.getLong("destino"));
					protocolo.setIdItem(rs.getLong("idItem"));
					protocolo.setDataProtocolo(rs.getDate("dataProtocolo"));
					protocolo.setObservacoes(rs.getString("observacoes"));

					return protocolo;
				}
			}
			return null;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void alterar(Protocolo protocolo) {
		String sql = "update protocolos set origem=?, destino=?, dataProtocolo=?, idItem=?, observacoes=? where id = ?";

		try {
			PreparedStatement stmt = this.connection.prepareStatement(sql);

			stmt.setLong(1, protocolo.getOrigem());
			stmt.setLong(2, protocolo.getDestino());
			stmt.setDate(3, protocolo.getDataProtocolo());
			stmt.setLong(4, protocolo.getIdItem());
			stmt.setString(5, protocolo.getObservacoes());
			stmt.setLong(6, protocolo.getIdProtocolo());
			stmt.execute();
			stmt.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}