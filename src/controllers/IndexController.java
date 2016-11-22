package controllers;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;

/**
 * Created by bruno on 11/22/16.
 */
@Controller
public class IndexController {
    public IndexController(){

    }

    @Get("/")
    public void index(){

    }
}
