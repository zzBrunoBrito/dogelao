package interceptors;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;

import br.com.caelum.vraptor.AfterCall;
import br.com.caelum.vraptor.Intercepts;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.interceptor.AcceptsWithAnnotations;
import component.Admin;
import component.UserSession;
import controllers.UserrController;

@Intercepts()
@RequestScoped
@AcceptsWithAnnotations(Admin.class)
public class CheckRole {
	
	@Inject
	private UserSession session;

	@Inject
	private Result result;

	@AfterCall
	public void redirect() {
		if (session.isLogged()){
			if (session.getUsuario().isAdmin())
				result.redirectTo(UserrController.class).homeAdmin();
			else
				result.redirectTo(UserrController.class).home();
		}
	}

}
