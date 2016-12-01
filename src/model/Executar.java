package model;

import dao.AuctionDao;
import dao.ItemDao;
import dao.interfaces.AuctionDaoInterface;
import dao.interfaces.ItemDaoInterface;
import dao.interfaces.UserrDaoInterface;
import dao.util.Fabrica;

import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;

import component.Category;



public class Executar {

	public static void main(String[] args) {

		
        Auction auc = new Auction();
        auc.setName("Xico leiloes1");

        Item i = new Item();
        i.setName("XILITAO");
        i.setPrice(2.55);
        i.setQuantity(3);

        Item i2 = new Item();
        i2.setName("pastel de forno");
        i2.setPrice(98.4);
        i2.setQuantity(2);
        
        Userr u = new Userr();
        u.setId(42);
        u.setPassword("senha");
        

        Bid bid = new Bid();
        bid.setBidTime(new Date());
        bid.setValue(265.3);
        bid.setItem(i);
        bid.setUser(u);

        Inscription ins = new Inscription();
        ins.setUser(u);
        ins.setAuction(auc);


		//try {
			EntityManager em = Fabrica.getEntityManager();
			em.getTransaction().begin();
			
			em.getTransaction().commit();
			
			//UserrDaoInterface dao = new UserrDao();
			AuctionDaoInterface dao = new AuctionDao();
			ItemDaoInterface itemDao = new ItemDao();
			
		//} catch (NullPointerException e) {
			//System.out.println("Falha ao encontrar");
		//}
				
		Fabrica.fecharFabrica();

	}
}
