package com.gmail.demo.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import jakarta.websocket.server.PathParam;
@SessionAttributes({"skey","wrongskey","emailu"})
@Controller
public class Logincontroller {
		@Autowired
		private Emailsender emailsender;
		@GetMapping()
		public String showloginpage() {
			return "loginpage";
		}
		@PostMapping("/login")
		public String login(@PathParam("email") String email,Model model) {
			String secretcode=Secretcodegenerator.generatecode();
			model.addAttribute("skey", secretcode);
			model.addAttribute("emailu", email);
			emailsender.sendemail(email,secretcode);
			return "redirect:/skey";
		}
		@GetMapping("/skey")
		public String showsecretcodepage() {
			return "secretkey";
		}
		@PostMapping("/skey")
		public String secretkeyenter(@RequestParam("seckey") String seckey,
									Model model) {
			String skey = (String) model.getAttribute("skey");
			if(skey.equals(seckey)==false) {
				model.addAttribute("wrongskey", "Invalid secrect key");
				return "redirect:/skey";
			}
			return "loginsucc"; 				
		}
}
