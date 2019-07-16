package com.codev.dao;

import java.util.List;

import com.codev.vo.Portfolio;

public interface PortfolioDao {
	public Portfolio selectById(String id);
	List<Portfolio> selectAll();
	public void addPortfolio(Portfolio portfolio);
}
