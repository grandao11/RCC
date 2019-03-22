<%-- 
    Document   : formulariodados
    Created on : 21/03/2019, 10:31:04
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
        <h1>Cadastro de Alunos!</h1>
        
        <%
            
            //se for novo, instancia novo objeto. 
            //se for alterar, busca os dados do registro no banco de dados
            int idcpf = Integer.parseInt(request.getParameter("id"));
            Formulario f;
            if (idcpf==0) {
                f = new Formulario();
            } else {
                FormularioDao fDao = new FormularioDao();
                f = fDao.consultar(idcpf);
            }
        %>
        
        
        <form action="formulariosalvar.jsp" method="post">
            CPF:
            <input type="text" name="idcpf" value="<%= f.getIdcpf()%>"/>
            Nome:
            <input type="text" name="nome" value="<%= f.getNome() %>"/>
            <br/>
            Rua:
            <input type="text" name="nome" value="<%= f.getNome() %>"/>
            <br/>
            Numero:
            <input type="text" name="nome" value="<%= f.getNome() %>"/>
            <br/>
            Bairro:
            <input type="text" name="nome" value="<%= f.getNome() %>"/>
            <br/>
            Cidade:
            <input type="text" name="nome" value="<%= f.getNome() %>"/>
            <br/>
            Cep:
            <input type="text" name="nome" value="<%= f.getNome() %>"/>
            <br/>
            Email:
            <input type="text" name="email" value="<%= f.getEmail()%>"/>
            <br/>
            Telefone:
            <input type="text" name="telefone" value="<%= f.getTelefone()%>"/>
            <br/>
            Grupo de Oração:
            <input type="radio" name="go" value="mr"/>GO Mãe Rainha
            <input type="radio" name="go" value="st"/>GO Santa Teresinha<br />
            <input type="radio" name="go" value="sf"/>GO Sagrada Familia<br />
            <input type="radio" name="go" value="apc"/>GO Apocalipse<br />
            <br/>
            
            <input type="submit" value="salvar"/>
            
        </form>
    </body>
</html>
