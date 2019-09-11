package br.edu.ifpr.models;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class Contato {

    private Long Id;
    private String nome;
    private String email;
    private String endereco;
    private Calendar dataNascimento;

    public Long getId() {
        return Id;
    }

    public void setId(Long id) {
        Id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public Calendar getDataNascimento() {
        return dataNascimento;
    }

    public String getDataNascimentoFormatada(){

        SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/YYYY");

        return dateFormat.format(new Date(this.getDataNascimento().getTimeInMillis()));
    }


    public void setDataNascimento(Calendar dataNascimento) {
        this.dataNascimento = dataNascimento;
    }

    public void show(){
        System.out.println("id: " + this.getId());
        System.out.println("nome: " + this.getNome());
        System.out.println("e-mail: " + this.getEmail());
        System.out.println("endereço: " + this.getEndereco());

        SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/YYYY");

        System.out.println("data nascimento: " + dateFormat.format(this.getDataNascimento()));
        System.out.println("");
    }
}
