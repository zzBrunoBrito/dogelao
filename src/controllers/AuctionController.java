package controllers;

import java.sql.Time;
import java.util.Date;

import javax.inject.Inject;

import annotation.Logged;
import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Post;
import component.UserSession;
import dao.AuctionDao;
import dao.interfaces.AuctionDaoInterface;
import model.Auction;

/**
 * Created by bruno on 11/18/16.
 */
@Controller
public class AuctionController {
	
	@Inject
	private UserSession session;
	private AuctionDaoInterface auctionDao;
	
	public AuctionController(){
		
	}
	
	@Inject
	public AuctionController(AuctionDao auctionDao){
		this.auctionDao = auctionDao;
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
		
	}
}
