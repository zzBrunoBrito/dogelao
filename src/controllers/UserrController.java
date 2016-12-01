package controllers;


import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import component.Admin;
import component.Logged;
import component.UserSession;
import dao.AuctionDao;
import dao.ItemDao;
import dao.UserrDao;
import dao.interfaces.AuctionDaoInterface;
import dao.interfaces.ItemDaoInterface;
import dao.interfaces.UserrDaoInterface;
import dao.util.Fabrica;
import model.Item;
import model.Userr;

/**
 * Created by bruno on 11/18/16.
 */
@Controller
public class UserrController {
    @Inject
	Result result;
	
	@Inject
	protected UserSession session;
	
	protected UserrDaoInterface userDao;
	
	protected AuctionDaoInterface auctionDao;
	
	protected ItemDaoInterface itemDao;
	
	public UserrController(){
		
	}
	
	@Inject
	public UserrController(UserrDao userDao, AuctionDao auctionDao, ItemDao itemDao) {
		this.userDao = userDao;
		this.auctionDao = auctionDao;
		this.itemDao = itemDao;
	}
	
	@Get("/register")
	public void vai(){
		System.out.println("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
	}
	
	@Post("/register-user")
	public void register(Userr user){
		System.out.println(user.getUsername());
		System.out.println(user.getPerson().getName());
		userDao.save(user);
		result.redirectTo(UserrController.class).login(user);
		
	}
	
	@Admin
	@Post("/login")
	public void login(Userr user){
		if (userDao.check(user) != null){
			session.setUsuario(userDao.check(user));
			//result.redirectTo(this).home();
		}else{
			result.include("msg", "Credenciais inválidas");
			result.redirectTo(IndexController.class).index();
		}
		
	}
	
	@Logged
	@Post("/logout")
	public void logout(){
		session.logout();
	}
	
	@Logged
	@Get("/home")
	public void home(){
		result.include("recentAuction", auctionDao.getRecent(9));
		result.include("usedItems", itemDao.listByUsage(true, 9));
		result.include("newItems", itemDao.listByUsage(false, 9));
	}
	
	@Get("/home-admin")
	public void homeAdmin(){
		
	}
}






