package dao;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import dao.interfaces.UserrDaoInterface;
import dao.util.Fabrica;
import model.Auction;
import model.Userr;

/**
 * Created by bruno on 11/18/16.
 */
public class UserrDao extends AbstractGenericDao<Userr, Integer> implements UserrDaoInterface {
	public UserrDao(){
		super(Userr.class);
	}
	
	public Userr check(Userr user){
		EntityManager em = Fabrica.getEntityManager();
        em.getTransaction().begin();
        Session session = (Session) em.getDelegate();
        return (Userr) session.createCriteria(Userr.class)
        		.add(Restrictions.eq("username", user.getUsername()))
        		.add(Restrictions.eq("password", user.getPassword())).uniqueResult();
	}
}
