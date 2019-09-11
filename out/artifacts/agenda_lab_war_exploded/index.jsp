<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page import="br.edu.ifpr.daos.ContatoDAO" %>
<%@ page import="br.edu.ifpr.models.Contato" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>

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

<jsp:useBean id="dao" class="br.edu.ifpr.daos.ContatoDAO" />

<div class="container">

  <h1><% out.println("Agenda"); %></h1>

  <a href="adicionar-contato.jsp">adicionar-contato</a>


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

    <c:forEach var="contato" items="${dao.contatos}">
      <tr>

        <th scope="row">${contato.id }</th>
        <td>${ contato.nome }</td>
        <td>${ contato.email }</td>
        <td>${ contato.endereco }</td>
        <td>${ contato.dataNascimentoFormatada }</td>
        <td> <a href="editar-contato.jsp">editar</a> | excluir</td>

      </tr>

    </c:forEach>

    </tbody>
  </table>

</div>
<!-- ./container -->

</body>
</html>
