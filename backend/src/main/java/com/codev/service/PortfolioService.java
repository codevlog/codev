package com.codev.service;

import java.util.List;

import com.codev.vo.Portfolio;

public interface PortfolioService {
	public Portfolio selectById(String id);
	List<Portfolio> selectAll();
	public void addPortfolio(Portfolio portfolio);
}
