package com.spring.config;

import java.util.Properties;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.web.context.annotation.SessionScope;

import com.spring.dto.user.LoginUserDTO;

@Configuration
public class RootAppContext {
	
	@Bean("loginUserBean")
	@SessionScope
	public LoginUserDTO loginUserBean() {
		return new LoginUserDTO();
	}
	@Bean(name="mailSender")
	public JavaMailSender getJavaMailSender() {
		Properties properties = new Properties();
		properties.put("mail.smtp.auth", true);
		properties.put("mail.transport.protocol", "smtp");
		properties.put("mail.smtp.starttls.enable",true);
		properties.put("mail.smtp.starttls.required", true);
		properties.put("mail.debug",true);
		
		JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
		mailSender.setHost("smtp.gamil.com");
		mailSender.setPort(587);
		mailSender.setUsername("spahslzk@gamil.com");
		mailSender.setPassword("wkdgns1243!#");
		mailSender.setDefaultEncoding("UTF-8");
		mailSender.setJavaMailProperties(properties);
		
		return mailSender;
	}
	

}
