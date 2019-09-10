package br.edu.ifpr.tests;

import br.edu.ifpr.daos.ContatoDAO;

import java.sql.SQLException;

public class TesteConnection {

    public static void main(String[] args) throws SQLException {

        ContatoDAO contatoDAO = new ContatoDAO();
        //contatoDAO.insereContato();
        contatoDAO.getContatos();



    }
}
