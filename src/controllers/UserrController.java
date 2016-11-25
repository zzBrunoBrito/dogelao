package controllers;


import javax.inject.Inject;
import javax.persistence.EntityManager;

import annotation.Admin;
import annotation.Logged;
import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import component.UserSession;
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
	
	@Inject
	protected UserSession session;
	
	protected UserrDaoInterface dao;
	
	public UserrController(){
		
	}
	
	@Inject
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
		dao.save(user);
		
		result.redirectTo(IndexController.class).index();
		
	}
	
	@Admin
	@Post("/login")
	public void login(Userr user){
		if (dao.check(user) != null){
			session.setUsuario(dao.check(user));
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
		
	}
	
	@Get("/home-admin")
	public void homeAdmin(){
		
	}
}






