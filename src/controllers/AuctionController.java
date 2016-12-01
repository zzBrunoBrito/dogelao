package controllers;

import java.sql.Time;
import java.util.Date;
import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import component.UserSession;
import dao.AuctionDao;
import dao.ItemDao;
import dao.interfaces.AuctionDaoInterface;
import dao.interfaces.ItemDaoInterface;
import model.Auction;
import model.Item;

/**
 * Created by bruno on 11/18/16.
 */
@Controller
public class AuctionController {
	
	@Inject
	private UserSession session;
	@Inject
	private Result result;
	
	private AuctionDaoInterface<Integer> auctionDao;
	private ItemDaoInterface itemDao;
	
	public AuctionController(){
		
	}
	
	@Inject
	public AuctionController(AuctionDao auctionDao, ItemDao itemDao){
		this.auctionDao = auctionDao;
		this.itemDao = itemDao;
	}
	
	
	@Post("register-auction")
	public void register(Auction auction){
		System.out.println(auction.getDurationTime());
		System.out.println(auction.getItem().getPrice());
		System.out.println(auction.getItem().isUsed());
		System.out.println(auction.getItem().getCategory());
		auction.setDurationTime(new Time(60*1000));
		auction.setStarDate(new Date());
		auction.setUser(session.getUsuario());
		auctionDao.save(auction);	
		result.redirectTo(UserrController.class).home();
	}
	
	@Get("/dogepqp/search/{category}")
	public void search(String category){
		List<Auction> list = auctionDao.listByCategory(category);
		//result.use(Results.json()).from(list).serialize();
		result.include("auction", list);
	}
	
}
