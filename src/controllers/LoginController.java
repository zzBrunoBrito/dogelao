package controllers;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import model.Userr;
import component.UserSession;
import dao.UserrDao;

@Controller
public class LoginController {

	@Inject
	private UserSession userSession;
	@Inject
	private Result result;
	UserrDao dao = new UserrDao();
	
    @Get("login")
	public void form(){
		
	}
	
    @Post("autenticar")
	public void auth(Userr user){        
    	//verificar a se o id do obj existe no banco
       if ( user.getPerson().getId().equals(dao.findById(user.getId()))){
    	   userSession.setUsuario(user);
    	   
    	   //direciona para a page index
    	   result.redirectTo(IndexController.class).index();
       }else{
    	   //retorna pra page inicial caso o usuario n exista
    	   result.forwardTo(this).form();
       }	   	
	}
    @Get("sair")
    public void logout(){
    	userSession.logout();
    }
}
