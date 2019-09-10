<%--
  Created by IntelliJ IDEA.
  User: JEFFERSON
  Date: 09/09/2019
  Time: 14:31
  To change this template use File | Settings | File Templates.
--%>
<!doctype html>
<html lang="pt-br">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title>Hello, world!</title>

</head>
<body>

<div class="container">

    <h1>Hello, world!</h1>

    <a href="index.jsp">voltar</a>

    <form action="adicionaContato" method="post">

        <div class="form-group">
            <label for="nome">Nome</label>
            <input name="nome" type="text" class="form-control" id="nome" aria-describedby="nomeHelp" placeholder="seu nome email">
            <small id="nomeHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
        </div>

        <div class="form-group">
            <label for="email">Email</label>
            <input name="email" type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email">
            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
        </div>

        <div class="form-group">
            <label for="endereco">Endereço</label>
            <input name="endereco" type="text" class="form-control" id="endereco" aria-describedby="emailHelp" placeholder="Enter email">
            <small id="enderecoHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
        </div>

        <div class="form-group">
            <label for="dataNascimento">Data Nascimento</label>
            <input name="dataNascimento" type="date" class="form-control" id="dataNascimento" aria-describedby="emailHelp" placeholder="Enter email">
            <small id="datalHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
        </div>


        <button type="submit" class="btn btn-primary">cadastrar</button>
    </form>

</div>
<!-- ./container -->



</body>
</html>

