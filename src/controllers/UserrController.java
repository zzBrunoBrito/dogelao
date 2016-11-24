package controllers;


import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import dao.UserrDao;
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
	
	protected UserrDaoInterface dao;
	
	public UserrController(){
		
	}
	
	public UserrController(UserrDao dao) {
		this.dao = dao;
	}
	
	@Get("/register")
	public void vai(){
		System.out.println("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
	}
	
	@Post("/register-user")
	public void register(Userr user){
		System.out.println(user.getUsername());
		System.out.println(user.getPerson().getName());
		UserrDaoInterface dao = new UserrDao();
		dao.save(user);
		
		//result.redirectTo(IndexController.class).index();
		
	}
}
