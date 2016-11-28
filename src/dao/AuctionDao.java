package dao;

import java.io.Serializable;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;

import org.hibernate.Session;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;

import dao.interfaces.AuctionDaoInterface;
import dao.util.Fabrica;
import model.Auction;
import model.Userr;

/**
 * Created by bruno on 11/18/16.
 */
public class AuctionDao extends AbstractGenericDao<Auction, Integer> implements AuctionDaoInterface {
	
	public AuctionDao(){
		super(Auction.class);
	}
	
	public List<Auction> getRecent(int result){
		EntityManager em = Fabrica.getEntityManager();
        em.getTransaction().begin();
        Session session = (Session) em.getDelegate();
        List<Auction> auc = (List) session.createCriteria(persistedClass)
        		.addOrder(Order.desc("starDate")).setMaxResults(result).list();
        em.close();
        return auc;
	}
	
	
}
