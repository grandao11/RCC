<%-- 
    Document   : formulariosalvar
    Created on : 21/03/2019, 09:50:07
    Author     : Gustavo
--%>

<%@page import="dao.FormularioDao"%>
<%@page import="pojo.Formulario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Salvar</h1>
        
        <%
        
            Formulario f = new Formulario();
            f.setIdcpf( Integer.parseInt(request.getParameter("idcpf")) );
            f.setNome(request.getParameter("nome"));
            f.setRua(request.getParameter("rua"));
            f.setNumero(Integer.parseInt(request.getParameter("numero")));
            f.setBairro(request.getParameter("bairro"));
            f.setCidade(request.getParameter("cidade"));
            f.setCep(Integer.parseInt(request.getParameter("cep")));
            f.setEmail(request.getParameter("email"));
            f.setTelefone(request.getParameter("telefone"));
            f.setGo(request.getParameter("go"));
            
            FormularioDao fDao = new FormularioDao();
            fDao.salvar(f);
            
        %>
        Registro Salvo com sucesso!
        <a href="alunos.jsp">Voltar</a>
    </body>
</html>
