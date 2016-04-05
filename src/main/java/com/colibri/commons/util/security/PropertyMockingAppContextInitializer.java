package com.colibri.commons.util.security;

import org.springframework.context.ApplicationContextInitializer;
import org.springframework.context.ConfigurableApplicationContext;

/**
 * 
 * @author jose.hernandez
 *
 */
public class PropertyMockingAppContextInitializer implements ApplicationContextInitializer<ConfigurableApplicationContext> {

	@Override
	public void initialize(ConfigurableApplicationContext applicationContext) {
		System.setProperty("environment", "local");
	}

}
