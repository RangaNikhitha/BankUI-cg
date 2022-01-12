package com.bankui.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class StatementController {

	@RequestMapping("/process-statement")
	public void processStatement(@RequestParam("startDate") String startDate, 
			@RequestParam("endDate") String endDate) {
		/*
		 * call api and pass startDate and endDate
		 * 1. path variable : localhost:8181/statement/startDate/endDate
		 * 2. query params : localhost:8181/statement?startDate=<startDate>&endDate=<endDate>
		 * 3. body: { startDate : "<startDate>", endDate: "<endDate>"}
		 * 
		 */
		
		
	}
}