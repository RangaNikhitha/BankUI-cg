package com.bankui.controller;

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

import com.bankui.beans.Account;
import com.bankui.beans.Customer;
import com.bankui.beans.Transaction;


@Controller
public class BalanceController {
	
	@RequestMapping("/show-balance")
	public String showBalance(@ModelAttribute Account account,Model model,HttpSession session) {
		RestTemplate restTemplate= new RestTemplate(); 
		//generate encoded auth_code using username and password and attach it to headers
		HttpHeaders headers = new HttpHeaders();
		String username = (String)session.getAttribute("username"); 
		String password = (String)session.getAttribute("password"); //plain pass
		
		headers.setBasicAuth(username, password);
		
		//attach this header to request Object 
				HttpEntity<Object> request = new HttpEntity<>(headers); 
				
				String url="http://localhost:8181/balance";
				try {
				
					ResponseEntity<Account> entity = restTemplate.exchange(url, HttpMethod.GET, request, Account.class);
					Account acc = entity.getBody();
					model.addAttribute("acc", acc);
					return "dashboard/balance";
				}
				catch(Exception e) {
						e.printStackTrace(); 
						model.addAttribute("account",account);
						model.addAttribute("msg", "Transfer could not be processed, please try later or contact support");
						return "dashboard/balance";
					
				}
		
	}
	

}