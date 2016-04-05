package com.colibri.web;

import java.io.FileNotFoundException;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 
 * @author jose.hernandez
 *
 */
@Controller
@RequestMapping("/bancoImg")
public class BancoImagenesController {
	
	private static final Logger LOGGER = Logger.getLogger(BancoImagenesController.class);
	
	@RequestMapping("/imgFB")
	public ModelAndView imagenesFacebook() throws FileNotFoundException {
		return new ModelAndView("imgFB");
	}

}
