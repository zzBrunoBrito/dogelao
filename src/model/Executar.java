package model;

import dao.AuctionDao;
import dao.interfaces.AuctionDaoInterface;
import dao.interfaces.UserrDaoInterface;
import dao.util.Fabrica;

import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;


public class Executar {

	public static void main(String[] args) {

		
        Auction auc = new Auction();
        auc.setEndDate(new Date());
        auc.setName("Xico leiloes3");
        auc.setStarDate(new Date());
        auc.setWindow_time(new Date());

        /*Item i = new Item();
        i.setName("XILITAO");
        i.setPrice(2.55);
        i.setQuantity(3);
        i.setAuction(auc);

        Item i2 = new Item();
        i2.setName("pastel de forno");
        i2.setPrice(98.4);
        i2.setQuantity(2);
        i2.setAuction(auc);

        Bid bid = new Bid();
        bid.setBidTime(new Date());
        bid.setValue(265.3);
        bid.setItem(i);
        bid.setUser(u);

        Inscription ins = new Inscription();
        ins.setUser(u);
        ins.setAuction(auc);*/


		//try {
			EntityManager em = Fabrica.getEntityManager();
			em.getTransaction().begin();
			
			em.getTransaction().commit();
			
			//UserrDaoInterface dao = new UserrDao();
			AuctionDaoInterface dao = new AuctionDao();
			//dao.save(auc);
			List<Auction> list = dao.getRecent();
			for (Auction auction : list) {
				System.out.println(auction.getName());
			}
			
		//} catch (NullPointerException e) {
			//System.out.println("Falha ao encontrar");
		//}
				
		Fabrica.fecharFabrica();

	}
}
