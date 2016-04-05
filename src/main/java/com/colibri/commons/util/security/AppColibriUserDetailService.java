package com.colibri.commons.util.security;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import com.colibri.domain.entity.UserEntity;
import com.colibri.repository.UserRepository;

@Component
public class AppColibriUserDetailService implements UserDetailsService {
	
	private static final Logger LOGGER = Logger.getLogger(AppColibriUserDetailService.class);
	
	@Autowired
	private UserRepository userRepository;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		LOGGER.info("Creando detalles de usuario para: " + username);
		
		final CustomUserDetails userDetails;
		final List<GrantedAuthority> grantedAuthorities = this.getGrantedAuthorities(username);
		
		
		return null;
	}
	
	private List<GrantedAuthority> getGrantedAuthorities(final String lanId) {

		final List<GrantedAuthority> grantedAuthorities = new ArrayList<GrantedAuthority>();

		final UserEntity userEntity = userRepository.findByUsernameAndPassword(lanId, "");

		if (userEntity == null) {
			LOGGER.info("User wasn't found, setting empty authorities list.");
			return grantedAuthorities;
		}

		grantedAuthorities.add(new SimpleGrantedAuthority(""));
		return grantedAuthorities;
	}

}
