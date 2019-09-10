<%@ page import="br.edu.ifpr.daos.ContatoDAO" %>
<%@ page import="br.edu.ifpr.models.Contato" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>

<%--
  Created by IntelliJ IDEA.
  User: JEFFERSON
  Date: 09/09/2019
  Time: 13:21
  To change this template use File | Settings | File Templates.
--%>

<%
  ContatoDAO contatoDAO = new ContatoDAO();
  List<Contato> contatos = contatoDAO.getContatos();

  SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/YYYY");

%>

<!doctype html>
<html lang="pt-br">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >

    <title>Hello, world!</title>

</head>
<body>

<div class="container">

  <h1><% out.println("Agenda"); %></h1>

  <a href="adiciona-contato.jsp">adicionar-contato</a>


  <table class="table">
    <thead>

    <tr>
      <th scope="col">#</th>
      <th scope="col">Nome</th>
      <th scope="col">E-mail</th>
      <th scope="col">Endereço</th>
      <th scope="col">Nascimento</th>
      <th scope="col">#</th>
    </tr>

    </thead>
    <tbody>

    <% for (Contato contato: contatos) { %>

      <tr>
        <th scope="row"><%= contato.getId() %></th>
        <td><%= contato.getNome() %></td>
        <td><%= contato.getEmail() %></td>
        <td><%= contato.getEndereco() %></td>
        <td><%= dateFormat.format(new Date(contato.getDataNascimento().getTimeInMillis())) %></td>
        <td>editar | excluir</td>

      </tr>

    <% } %>

    </tbody>
  </table>

</div>
<!-- ./container -->


<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>
</html>
