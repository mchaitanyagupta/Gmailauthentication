package com.gmail.demo.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

@Component
public class Emailsender {
	@Autowired
	private JavaMailSender mailsender;
	
	public void sendemail(String to,String code) {
		SimpleMailMessage msg=new SimpleMailMessage();
		msg.setFrom("mchaitanyagupta@gmail.com");
		msg.setTo(to);
		msg.setSubject("Secret key");
		msg.setText("your secret code for login portal:");
		msg.setText(code);
		mailsender.send(msg);
	}

}
