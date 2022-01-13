package com.bankui.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

import com.bankui.beans.Help;
import com.bankui.beans.Transaction;

@Controller
public class HelpController {
	
	@RequestMapping("/show-help")
	public String showHelp(Model model,HttpSession session,@ModelAttribute Help help) {
	RestTemplate restTemplate= new RestTemplate();
	//generate encoded auth_code using username and password and attach it to headers
			HttpHeaders headers = new HttpHeaders();
			String username = (String)session.getAttribute("username"); 
			String password = (String)session.getAttribute("password"); //plain pass
			
			headers.setBasicAuth(username, password);
			
			//attach this header to request Object 
			HttpEntity<Object> request = new HttpEntity<>(headers); 
			
			String url="http://localhost:8181/help";
			
			try {
				ResponseEntity<Help> entity = restTemplate.exchange(url, HttpMethod.POST, request, Help.class);
			 help = entity.getBody();
				model.addAttribute("help", help);
				return "dashboard/help";
			}
			catch(Exception e) {
				e.printStackTrace(); 
				model.addAttribute("msg", "FAQ");
				return "dashboard/help";
			}
}
}