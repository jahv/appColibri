package com.colibri.commons.util.security;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;

import com.google.common.base.Objects;

/**
 * Class to add more details for {@link UserDetails} 
 * 
 * @author Jose Antonio
 *
 */
public class CustomUserDetails extends User {
	
	private static final long serialVersionUID = 1L;
	
	private String firstName;
	private String lastName;
	private String email;

	/**
	 * 
	 * @param firstName
	 * @param lastName
	 * @param email
	 * @param username
	 * @param password
	 * @param enabled
	 * @param accountNonExpired
	 * @param credentialsNonExpired
	 * @param accountNonLocked
	 * @param authorities
	 */
	public CustomUserDetails(final String firstName, final String lastName, final String email, 
			final String username, final String password, final boolean enabled,
			final boolean accountNonExpired, final boolean credentialsNonExpired,
			final boolean accountNonLocked, final Collection<? extends GrantedAuthority> authorities) {
		super(username, password, enabled, accountNonExpired, credentialsNonExpired,
				accountNonLocked, authorities);
		
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
	}

	/**
	 * @return the firstName
	 */
	public String getFirstName() {
		return firstName;
	}

	/**
	 * @param firstName the firstName to set
	 */
	public void setFirstName(final String firstName) {
		this.firstName = firstName;
	}

	/**
	 * @return the lastName
	 */
	public String getLastName() {
		return lastName;
	}

	/**
	 * @param lastName the lastName to set
	 */
	public void setLastName(final String lastName) {
		this.lastName = lastName;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(final String email) {
		this.email = email;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		return Objects.hashCode(firstName, lastName, email);
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	@Override
	public boolean equals(final Object obj) {
		if(obj instanceof CustomUserDetails) {
			final CustomUserDetails that = (CustomUserDetails) obj;
			return Objects.equal(this.firstName, that.firstName)
					&& Objects.equal(this.lastName, that.lastName)
					&& Objects.equal(this.email, that.email);
		}
		return false;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		
		return Objects.toStringHelper(CustomUserDetails.class).add("firstName", firstName)
				.add("lastName", lastName).add("email", email).toString().concat("super [" + super.toString() + "]");
	}
	
}
