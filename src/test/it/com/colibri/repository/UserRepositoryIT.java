package com.colibri.repository;

import java.util.List;

import org.assertj.core.api.Assertions;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractTransactionalJUnit4SpringContextTests;

import com.colibri.commons.util.security.PropertyMockingAppContextInitializer;
import com.colibri.domain.entity.UserEntity;

@ContextConfiguration(initializers = PropertyMockingAppContextInitializer.class,
	locations = {"/Spring/jdbc/dbTest-applicationContext.xml" })
public class UserRepositoryIT extends AbstractTransactionalJUnit4SpringContextTests {
	
	@Autowired
	private UserRepository userRepository;
	
	@Test
	public void findAllTest() {
		final List<UserEntity> actual = userRepository.findAll();
		
		Assertions.assertThat(actual).isNotNull().isNotEmpty();
	}

}
