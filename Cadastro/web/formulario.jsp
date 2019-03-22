<%-- 
    Document   : Formulario
    Created on : 21/03/2019, 10:12:37
    Author     : Gustavo
--%>
<%@page import="pojo.Formulario"%>
<%@page import="dao.FormularioDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario</title>
    </head>
    <body>
        <h1>Cadastro!</h1>
        
        <%
            FormularioDao fDao = new FormularioDao();
             for (Formulario f: fDao.listar()){
                 out.print("<tr>" + f.getIdcpf() + "</td>");
                 out.print("<tr>" + f.getNome() + "</td>");
                 out.print("<tr>" + f.getRua() + "</td>");
                 out.print("<tr>" + f.getNumero() + "</td>");
                 out.print("<tr>" + f.getBairro() + "</td>");
                 out.print("<tr>" + f.getCidade() + "</td>");
                 out.print("<tr>" + f.getCep() + "</td>");
                 out.print("<tr>" + f.getEmail() + "</td>");
                 out.print("<tr>" + f.getTelefone() + "</td>");
                 out.print("<tr>" + f.getGo() + "</td>");
                 out.print("td><a href=formulariodados.jsp?id="
                         +f.getIdcpf()
                         +"'>alterar</a></td>");
                 out.print("<td><a href='formularioexcluir.jsp?id="
                         + f.getIdcpf() 
                         + "'>excluir</a></td>");
                 out.print("</tr>");
             }
            %>
        
        <a href="formulario.jsp">Novo</a>
    </body>
</html>