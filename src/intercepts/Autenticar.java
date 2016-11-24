package intercepts;

import javax.inject.Inject;

import component.UserSession;
import controllers.LoginController;
import annotation.Public;
import br.com.caelum.vraptor.InterceptionException;
import br.com.caelum.vraptor.Intercepts;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.controller.ControllerMethod;
import br.com.caelum.vraptor.core.InterceptorStack;
import br.com.caelum.vraptor.interceptor.Interceptor;

public class Autenticar implements Interceptor {

	@Inject
	private UserSession userSession;
	@Inject
	private Result result;
	
	@Override
	public boolean accepts(ControllerMethod cm) {
		boolean isPresentInMethod = cm.containsAnnotation(Public.class);
		boolean isPresentInClass = cm.getClass().isAnnotationPresent(Public.class);		
		return !(isPresentInMethod || isPresentInClass);
	}

	@Override
	public void intercept(InterceptorStack is, ControllerMethod cm, Object o) throws InterceptionException {
	    System.out.println(o.getClass().getTypeName());
		if (userSession.isLogged()){
	    	is.next(cm, o);
	    }else{
	    	result.redirectTo(LoginController.class).form();
	    }	
     		
	}

}
