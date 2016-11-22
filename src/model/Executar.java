package model;


import dao.util.Fabrica;

import java.util.Date;

import javax.persistence.EntityManager;


public class Executar {

	public static void main(String[] args) {

		Address a = new Address();
		a.setCep("sdsadsa");
		a.setCity("asdasdsa");
		a.setNeighborhood("aaaaaaaaa");
		a.setNumber("23");
		a.setStreet("eua");
		
		Person p = new Person();
		p.setBornDate(new Date());
		p.setCellphone("sadsad");
		p.setEmail("enaull");
		p.setName("asdsadsa");
		p.setSex("M");
		p.setTelephone("12312321");
		p.setAddress(a);
		
		Userr u = new Userr();
		u.setAdmin(false);
		u.setRegisterDate(new Date());
		u.setUsername("sdasdas");
		u.setPerson(p);

        Auction auc = new Auction();
        auc.setEndDate(new Date());
        auc.setName("Xico leiloes");
        auc.setOwner(u);
        auc.setStarDate(new Date());
        auc.setWindow_time(new Date());

        Item i = new Item();
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
        ins.setAuction(auc);


		try {
			EntityManager em = Fabrica.getEntityManager();
			em.getTransaction().begin();
			em.persist(auc);
            em.persist(i);
            em.persist(i2);
            em.persist(bid);
            em.persist(ins);
			em.getTransaction().commit();
			
		} catch (NullPointerException e) {
			System.out.println("Proprietario nao encontrado!");
		}
				
		Fabrica.fecharFabrica();

	}
}
