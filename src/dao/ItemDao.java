package dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import dao.interfaces.ItemDaoInterface;
import dao.util.Fabrica;
import model.Auction;
import model.Item;

/**
 * Created by bruno on 11/18/16.
 */
public class ItemDao extends AbstractGenericDao<Item, Integer> implements ItemDaoInterface {
	public ItemDao(){
		super(Item.class);
	}
	
	public List<Item> listByUsage(boolean isUsed, int quantity){
		EntityManager em = Fabrica.getEntityManager();
        em.getTransaction().begin();
        Session session = (Session) em.getDelegate();
        List <Item> item = (List<Item>) session.createCriteria(persistedClass)
        		.add(Restrictions.eq("isUsed", isUsed)).setMaxResults(quantity).list();
        em.close();
        return item;
	}
	
	public List<Item> listByCategory(String category){
		EntityManager em = Fabrica.getEntityManager();
        em.getTransaction().begin();
        Session session = (Session) em.getDelegate();
        List<Item> auc = (List<Item>) session.createCriteria(Item.class)
        		.add(Restrictions.eq("category", category)).list();
        em.close();
        return auc;
	}
}
