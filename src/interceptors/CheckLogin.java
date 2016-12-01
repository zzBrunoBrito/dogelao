package interceptors;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;

import br.com.caelum.vraptor.AroundCall;
import br.com.caelum.vraptor.Intercepts;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.interceptor.AcceptsWithAnnotations;
import br.com.caelum.vraptor.interceptor.SimpleInterceptorStack;
import component.Logged;
import component.UserSession;
import controllers.IndexController;

@Intercepts
@RequestScoped
@AcceptsWithAnnotations(Logged.class)
public class CheckLogin {
	
	@Inject
	private UserSession session;
	
	@Inject
	private Result result;
	
	@AroundCall
	public void isLogged(SimpleInterceptorStack stack){
		if (session.isLogged())
			stack.next();
		else
			result.redirectTo(IndexController.class).index();
	}
}
