package interceptors;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;

import annotation.Admin;
import br.com.caelum.vraptor.AfterCall;
import br.com.caelum.vraptor.Intercepts;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.interceptor.AcceptsWithAnnotations;
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
		System.out.println(session.getUsuario().getUsername());
		System.out.println(session.getUsuario().isAdmin());
		System.out.println(session.getUsuario().getId());
		if (session.getUsuario().isAdmin())
			result.redirectTo(UserrController.class).homeAdmin();
		//else
			//result.redirectTo(UserrController.class).home();

	}

}
