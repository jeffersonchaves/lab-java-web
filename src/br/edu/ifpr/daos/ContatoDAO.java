package br.edu.ifpr.daos;

import br.edu.ifpr.connection.ConnectionFactory;
import br.edu.ifpr.models.Contato;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

public class ContatoDAO {

    private Connection connection;

    public ContatoDAO(){
         this.connection = new ConnectionFactory().getConnection();
    }

    public void insereContato(Contato contato) {

        try {
            PreparedStatement statement = connection.prepareStatement("INSERT INTO contatos (nome, email, endereco, dataNascimento) values(?,?,?,?)");
            statement.setString(1, contato.getNome());
            statement.setString(2, contato.getEmail());
            statement.setString(3, contato.getEndereco());
            statement.setDate(4, new Date(contato.getDataNascimento().getTimeInMillis()));

            statement.execute();
            statement.close();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public List<Contato> getContatos(){

        List<Contato> contatos = new ArrayList<>();

        try {
            PreparedStatement statement = connection.prepareStatement("SELECT  * FROM contatos");

            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()){

                Contato contato = new Contato();

                contato.setId(resultSet.getLong("Id"));
                contato.setNome(resultSet.getString("nome"));
                contato.setEmail(resultSet.getString("email"));
                contato.setEndereco(resultSet.getString("endereco"));

                Calendar calendar = Calendar.getInstance();
                calendar.setTime(resultSet.getDate("dataNascimento"));
                contato.setDataNascimento(calendar);

                contatos.add(contato);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return contatos;
    }

    public Contato getContatoById(int Id){

        Contato contato = new Contato();

        String sql = "SELECT * FROM contatos WHERE id = 1";

        try {

            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery();

           while (resultSet.next()){

               contato.setId(resultSet.getLong("Id"));
               contato.setNome(resultSet.getString("nome"));
               contato.setEmail(resultSet.getString("email"));
               contato.setEndereco(resultSet.getString("endereco"));

               Calendar calendar = Calendar.getInstance();
               calendar.setTime(resultSet.getDate("dataNascimento"));
               contato.setDataNascimento(calendar);
           }


        } catch (SQLException e) {
            //e.printStackTrace();
            System.out.println("Exception:" + e.getMessage());
        }

        return contato;

    }
}
