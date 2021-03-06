package dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;

import dao.interfaces.AuctionDaoInterface;
import dao.util.Fabrica;
import model.Auction;
import model.Item;
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
	
	public List<Auction> listByCategory(String category){
		EntityManager em = Fabrica.getEntityManager();
        em.getTransaction().begin();
        Session session = (Session) em.getDelegate();
        List<Auction> auc = (List<Auction>) session.createCriteria(Auction.class)
        		.createAlias("item", "i")
        		.add(Restrictions.eq("i.category", category)).list();
        em.close();
        return auc;
	}
	
	
}
