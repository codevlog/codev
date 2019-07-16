package com.codev.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.codev.service.PortfolioService;
import com.codev.vo.Portfolio;

@RestController
@RequestMapping("/api")
public class ApiController {
	@Autowired
	PortfolioService pSvc;
	
	@GetMapping("/portfolio")
	public List<Portfolio> getPortfolios() {
		return pSvc.selectAll();
	}
	
	@GetMapping("/portfolio/{id}")
	public Portfolio getPortfolio(@PathVariable String id) {
		return pSvc.selectById(id);
	}
	
	@PostMapping("/portfolio")
	public Map<String, String> postPortfolio(@RequestBody Portfolio portfolio) {
		pSvc.addPortfolio(portfolio);
		Map<String, String> resultMap = new HashMap<>();
		
		resultMap.put("result", "success");
		return resultMap;
	}
}
