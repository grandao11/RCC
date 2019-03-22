/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import conexao.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import pojo.Formulario;

/**
 *
 * @author Gustavo
 */
public class FormularioDao {
    Session conexao;
    
    public FormularioDao() {
        //abre a conexão com o hibernate
        conexao = HibernateUtil.getSessionFactory().getCurrentSession();
    }
    
    public void salvar(Formulario f) {
        //insere ou altera o registro de aluno
        conexao.beginTransaction();
        conexao.saveOrUpdate(f);
        conexao.getTransaction().commit();
    }
    
    public void excluir(Formulario f) {
        conexao.beginTransaction();
        conexao.delete(f);
        conexao.getTransaction().commit();
    }
    
    public Formulario consultar(int id){
        conexao.beginTransaction();
        Query query = conexao.createQuery("from Formulario where idaluno = " + id);
        Formulario f = (Formulario) query.uniqueResult();
        conexao.getTransaction().commit();
        return f;
    }
    
    public List<Formulario> listar() {
        conexao.beginTransaction();
        Query query = conexao.createQuery("from Formulario");
        List<Formulario> lista = query.list();
        conexao.getTransaction().commit();
        return lista;
    }
}
