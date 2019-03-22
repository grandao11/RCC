<%-- 
    Document   : formularioexcluir
    Created on : 21/03/2019, 09:48:05
    Author     : Gustavo
--%>

<%@page import="pojo.Formulario"%>
<%@page import="dao.FormularioDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Excluir</h1>
        
        <%
            int id = Integer.parseInt(request.getParameter("id"));
            FormularioDao fDao = new FormularioDao();
            Formulario f = new Formulario();
            f.setIdcpf(id);
            fDao.excluir(f);
        %>
        Registro excluído com sucesso!
        <a href="formulario.jsp">voltar</a>
    </body>
</html>
