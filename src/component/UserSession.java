package component;

import java.io.Serializable;

import javax.enterprise.context.SessionScoped;

import model.Userr;

@SessionScoped
public class UserSession implements Serializable {

	private Userr user;
	
	public boolean isLogged(){
		return user != null;
	}

	public void logout(){
		user = null; 		
	}
	
	public Userr getUsuario() {
		return user;
	}

	public void setUsuario(Userr user) {
		this.user = user;
	}
	
	
	
}
