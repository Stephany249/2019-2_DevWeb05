package br.com.cadastro.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import br.com.cadastro.model.Cliente;
import br.com.cadastro.model.Empresa;
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
		String sql = "insert into protocolos (origem, destino, dataProtocolo, observacoes) " + "values (?, ?, ?, ?)";

		try {
			PreparedStatement stmt = this.connection.prepareStatement(sql);
			stmt.setLong(1, protocolo.getOrigem());
			stmt.setLong(2, protocolo.getDestino());
			stmt.setDate(3, new java.sql.Date(protocolo.getDataProtocolo().getTimeInMillis()));
			stmt.setString(4, protocolo.getObservacoes());
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
			String sql = "SELECT protocolos.id, empresas.nomeEmpresa, clientes.nomeCliente, protocolos.dataProtocolo, protocolos.observacoes from clientes join protocolos join empresas where protocolos.origem = ? and protocolos.origem = empresas.id and (protocolos.destino = clientes.id)";
			//String sql = "select * from protocolos where origem = ?";
			PreparedStatement stmt = this.connection.prepareStatement(sql);
			stmt.setLong(1, empresa.getIdEmpresa());
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				Protocolo protocolo = new Protocolo();
				Cliente cliente = new Cliente();

				protocolo.setIdProtocolo(rs.getLong("id"));
				empresa.setNomeEmpresa(rs.getString("nomeEmpresa"));
				cliente.setNomeCliente(rs.getString("nomeCliente"));
				//protocolo.setOrigem(rs.getLong("protocolo.origem"));
				//protocolo.setDestino(rs.getLong("protocolo.destino"));
				Calendar dataProtocolo = Calendar.getInstance();
				dataProtocolo.setTime(rs.getDate("dataProtocolo"));
				protocolo.setDataProtocolo(dataProtocolo);
				protocolo.setObservacoes(rs.getString("observacoes"));
				empresas.add(empresa);
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
					Calendar dataProtocolo = Calendar.getInstance();
					dataProtocolo.setTime(rs.getDate("dataProtocolo"));
					protocolo.setDataProtocolo(dataProtocolo);
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
		String sql = "update protocolos set origem=?, destino=?, dataProtocolo=?, observacoes=? where id = ?";

		try {
			PreparedStatement stmt = this.connection.prepareStatement(sql);

			stmt.setLong(1, protocolo.getOrigem());
			stmt.setLong(2, protocolo.getDestino());
			stmt.setDate(3, new java.sql.Date(protocolo.getDataProtocolo().getTimeInMillis()));
			stmt.setString(4, protocolo.getObservacoes());
			stmt.setLong(5, protocolo.getIdProtocolo());
			stmt.execute();
			stmt.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
