package com.colibri.web;

import java.security.Principal;
import java.util.HashMap;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * Controller to handle all logging calls
 * 
 * @author jose.hernandez
 *
 */
@Controller
public class LoginController {
	
	private static final Logger LOGGER = Logger.getLogger(LoginController.class);
	
	/**
	 * Login page
	 * 
	 * @return
	 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView getLoginPage(@RequestParam(value = "forbidden", required = false) final String forbidden, 
			@RequestParam(value = "logout", required = false) final String logout) {
		
		ModelAndView model = new ModelAndView("jsp/login/login");
		
		if(forbidden != null) {
			model.addObject("httpErrorType", HttpStatus.FORBIDDEN);
			model.addObject("errorMessage", "Acceso denegado");
		}
		
		if(logout != null) {
			model.addObject("logoutMessage", "Sesi&oacute;n terminada correctamente.");
		}
		
		return model;
	}
	
	/**
	 * Landing page
	 * 
	 * @param principal
	 * @return
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView welcome(final Principal principal) {
		return new ModelAndView("dashboard"); 
	}
	
	/**
	 * Not found
	 * 
	 * @param principal
	 * @return
	 */
	@RequestMapping(value = "/error/404", method = RequestMethod.GET)
	public ModelAndView notFound(final Principal principal) {
		return new ModelAndView("jsp/login/404");
	}
	
	/**
	 * Access denied
	 * 
	 * @param principal
	 * @return
	 */
	@RequestMapping(value = "/error/accessDenied", method = RequestMethod.GET)
	public ModelAndView accessDenied(final Principal principal) {
		return new ModelAndView("jsp/login/403");
	}
	
}
