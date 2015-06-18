package com.pland.controller;
 
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
 
@Controller
public class BaseController {
 
	private static int counter = 0;
	private static final String VIEW_INDEX = "index";
	private static final String VIEW_BOOTSTRAP = "bootStrap";
	private static final String VIEW_BOOTSTRAP1 = "bootStrap1";
	private static final String VIEW_GATE = "gate";
	private static final String VIEW_GATE2 = "gateOk2";
	private final static org.slf4j.Logger logger = LoggerFactory.getLogger(BaseController.class);
 
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String welcome(ModelMap model) {
 
		model.addAttribute("message", "Welcome");
		model.addAttribute("counter", ++counter);
		logger.debug("[welcome] counter : {}", counter);
 
		// Spring uses InternalResourceViewResolver and return back index.jsp
		return VIEW_INDEX;
 
	}
 
	@RequestMapping(value = "/{name}", method = RequestMethod.GET)
	public String welcomeName(@PathVariable String name, ModelMap model) {
 
		model.addAttribute("message", "Welcome " + name);
		model.addAttribute("counter", ++counter);
		logger.debug("[welcomeName] counter : {}", counter);
		logger.debug("[welcomeName] name : {}", name);
		return VIEW_INDEX;
 
	}
	
	@RequestMapping(value = "/bootstrap", method = RequestMethod.GET)
	public String welcomeBootstrap(ModelMap model) {
 
		model.addAttribute("message", "Bootstrap");
		model.addAttribute("counter", ++counter);
		logger.debug("[welcomeBootstrap] counter : {}", counter);

		return VIEW_BOOTSTRAP;
 
	}
	
	@RequestMapping(value = "/bootstrap1", method = RequestMethod.GET)
	public String welcomeBootstrap1(ModelMap model) {
 
		model.addAttribute("message", "Bootstrap1");
		model.addAttribute("counter", ++counter);
		logger.debug("[welcomeBootstrap1] counter : {}", counter);

		return VIEW_BOOTSTRAP1;
 
	}
	
	
	@RequestMapping(value = "/gate", method = RequestMethod.GET)
	public String welcomeTile(ModelMap model) {
 
		model.addAttribute("message", "gate");
		model.addAttribute("counter", ++counter);
		logger.debug("[welcomeTile] counter : {}", counter);

		return VIEW_GATE;
 
	}
	
	@RequestMapping(value = "/gate2", method = RequestMethod.GET)
	public String welcomeTile2(ModelMap model) {
 
		model.addAttribute("message", "gate");
		model.addAttribute("counter", ++counter);
		logger.debug("[welcomeTile2] counter : {}", counter);

		return VIEW_GATE2;
 
	}
 
}