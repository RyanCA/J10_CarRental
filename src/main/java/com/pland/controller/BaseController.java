package com.pland.controller;
 
import java.util.ArrayList;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pland.dao.jdbc.JdbcVehicleClassDao;
import com.pland.modal.VehicleClass;
 
@Controller
public class BaseController {
 
	private static int counter = 0;
	private static final String VIEW_INDEX = "index";
	private static final String VIEW_BOOTSTRAP = "bootStrap";
	private static final String VIEW_BOOTSTRAP1 = "bootStrap1";
	private static final String VIEW_GATE = "gate"; //Check the gate definition in tiles.xml
	private static final String VIEW_GATE2 = "gateOk2";
	private static final String VIEW_JDBC = "jdbc"; //Check the jdbc definition in tiles.xml
	
	
	private final static org.slf4j.Logger logger = LoggerFactory.getLogger(BaseController.class);
	
	@Autowired
	private JdbcVehicleClassDao jdbcVehicleClassDao;
 
	public void setJdbcVehicleClassDao(JdbcVehicleClassDao jdbcVehicleClassDao) {
		this.jdbcVehicleClassDao = jdbcVehicleClassDao;
	}

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
 
		model.addAttribute("message", "bootstrap1");
		model.addAttribute("counter", ++counter);
		logger.debug("[welcomeBootstrap1] counter : {}", counter);

		return VIEW_BOOTSTRAP1;
 
	}
	
	/**
	 * This is the starting point to demonstrate how Apache Tile works
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/tile", method = RequestMethod.GET)
	public String welcomeTile(ModelMap model) {
 
		model.addAttribute("message", "tile");
		model.addAttribute("counter", ++counter);
		logger.debug("[welcomeTile] counter : {}", counter);
		
		return VIEW_GATE;
 
	}
	
	@RequestMapping(value = "/tile2", method = RequestMethod.GET)
	public String welcomeTile2(ModelMap model) {
 
		model.addAttribute("message", "tile2");
		model.addAttribute("counter", ++counter);
		logger.debug("[welcomeTile2] counter : {}", counter);

		return VIEW_GATE2;
 
	}
	
	/**
	 * This is the starting point to demonstrate how ModelMap can be displayed 
	 * in front jsp; And backend using jdbc to fetch DB
	 * Refer to jdbc.jsp as well to see how ModelMap(What about ModelAndView) 
	 * get displayed
	 * 
	 * 
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/jdbc", method = RequestMethod.GET)
	public String welcomeJdbc(ModelMap model) {
 
		model.addAttribute("message", "jdbc");
		model.addAttribute("counter", ++counter);
		
		logger.debug("[welcomeJdbc] counter : {}", counter);
		
		/**
		 * The following code can be replaced by using @Autowired flag which 
		 * will bring dependency injection
		 */
//		ApplicationContext context = 
//	    		new ClassPathXmlApplicationContext("*-context.xml");
//		JdbcVehicleClassDao jdbcVehicleClassDao = (JdbcVehicleClassDao) context.getBean("jdbcVehicleClassDao");
		ArrayList<VehicleClass> list = jdbcVehicleClassDao.findAll();
		model.addAttribute("vehicleClassList", list);
		
		return VIEW_JDBC;
 
	}
 
}