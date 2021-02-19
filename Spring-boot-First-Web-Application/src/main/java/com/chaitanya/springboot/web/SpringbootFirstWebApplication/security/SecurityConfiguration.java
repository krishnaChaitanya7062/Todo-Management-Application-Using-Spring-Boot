package com.chaitanya.springboot.web.SpringbootFirstWebApplication.security;
	
	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.context.annotation.Configuration;
	import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
	import org.springframework.security.config.annotation.web.builders.HttpSecurity;
	import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
	import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;

	@Configuration
	@EnableWebSecurity
	public class SecurityConfiguration extends WebSecurityConfigurerAdapter {
		@Autowired
		public void configureGlobalSecurity(AuthenticationManagerBuilder auth)
				throws Exception {
			auth.inMemoryAuthentication().passwordEncoder(new BCryptPasswordEncoder()).withUser("ADMIN").password("$2a$10$R.RtJCnt2gF3DTg.pmQ8a.TTfJH2JuhsjHkb9cyJG7bxQHRrp2WzC")
					.roles("USER", "ADMIN");
		}

		@Override
		protected void configure(HttpSecurity http) throws Exception {
			http.authorizeRequests().antMatchers("/login","/h2-console/**").permitAll()
					.antMatchers("/", "/*todo*/**").access("hasRole('USER')").and()
					.formLogin();
			http.csrf().disable();
			http.headers().frameOptions().disable();
		}
	}


