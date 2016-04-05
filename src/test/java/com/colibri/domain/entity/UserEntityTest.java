package com.colibri.domain.entity;

import org.assertj.core.api.Assertions;
import org.junit.Test;
import org.meanbean.test.BeanTester;
import org.meanbean.test.EqualsMethodTester;
import org.meanbean.test.HashCodeMethodTester;

public class UserEntityTest {
	
	@Test
	public void testGettersSettersMethods() {
		final BeanTester beanTester = new BeanTester();
		beanTester.testBean(UserEntity.class);
	}
	
	@Test
	public void testEqualsMethod() {
		final EqualsMethodTester equalsMethodTester = new EqualsMethodTester();
		equalsMethodTester.testEqualsMethod(UserEntity.class);
	}
	
	@Test
	public void testHashMethod() {
		final HashCodeMethodTester tester = new HashCodeMethodTester();
		tester.testHashCodeMethod(UserEntity.class);
	}
	
	@Test
	public void testToString() {
		final UserEntity userEntity = new UserEntity();
		userEntity.setId(1L);
		userEntity.setActive(true);
		userEntity.setUsername("name");
		userEntity.setPassword("password");
		
		final String actual = userEntity.toString();
		
		Assertions.assertThat(actual).isNotNull().isNotEmpty();
	}
	
}
