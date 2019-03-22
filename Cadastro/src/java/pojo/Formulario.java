/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pojo;

/**
 *
 * @author Gustavo
 */
public class Formulario implements java.io.Serializable {

     private int idcpf;
     private String nome;
     private String rua;
     private int numero;
     private String bairro;
     private String cidade;
     private int cep;
     private String email;
     private String telefone;
     private String go;

    public Formulario() {
    }

	
    public Formulario(int idcpf) {
        this.idcpf = idcpf;
    }
    public Formulario(int idcpf, String nome, String rua, int numero, String bairro, String cidade, int cep, String email, String telefone, String go) {
       this.idcpf = idcpf;
       this.nome = nome;
       this.rua = rua;
       this.numero = numero;
       this.bairro = bairro;
       this.cidade = cidade;       
       this.cep = cep;
       this.email = email;
       this.telefone = telefone;
       this.go = go;
    }

    public int getIdcpf() {
        return idcpf;
    }

    public void setIdcpf(int idcpf) {
        this.idcpf = idcpf;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getRua() {
        return rua;
    }

    public void setRua(String rua) {
        this.rua = rua;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public int getCep() {
        return cep;
    }

    public void setCep(int cep) {
        this.cep = cep;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getGo() {
        return go;
    }

    public void setGo(String go) {
        this.go = go;
    }
}