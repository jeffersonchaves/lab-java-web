package br.edu.ifpr.servlets;

import br.edu.ifpr.daos.ContatoDAO;
import br.edu.ifpr.models.Contato;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

@WebServlet("/adicionaContato")
public class AdicionaContato extends HttpServlet {

    @Override
    public void init() throws ServletException {
        super.init();
        System.out.println("Inicializando a Servlet");
    }

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws IOException {

        System.out.println(request.getParameter("dataNascimento"));

        Contato contato = new Contato();
        contato.setNome(request.getParameter("nome"));
        contato.setEmail(request.getParameter("email"));
        contato.setEndereco(request.getParameter("endereco"));

        try {
            Date data = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("dataNascimento"));

            Calendar dataNascimento = Calendar.getInstance();
            dataNascimento.setTime(data);
            contato.setDataNascimento(dataNascimento);

        } catch (ParseException e) {
            e.printStackTrace();
        }

        ContatoDAO contatoDAO = new ContatoDAO();
        contatoDAO.insereContato(contato);

        response.sendRedirect(request.getContextPath() + "/index.jsp");
    }

    @Override
    public void destroy() {
        super.destroy();
        System.out.println("Destruindo a Servlet");
    }
}
