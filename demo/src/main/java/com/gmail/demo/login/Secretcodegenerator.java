package com.gmail.demo.login;

import java.util.Random;

import org.springframework.stereotype.Component;

@Component
public class Secretcodegenerator {
	
	public static String generatecode() {
		String all="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVXYZ01234567890";
		StringBuilder res=new StringBuilder();
		Random ran=new Random();
		for(int i=0;i<6;i++) {
			int ind=ran.nextInt(all.length()-1);
			res.append(all.charAt(ind));
		}
		return res.toString();
	}

}
