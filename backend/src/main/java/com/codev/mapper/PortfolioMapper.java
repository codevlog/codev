package com.codev.mapper;

import java.util.List;

import com.codev.vo.Portfolio;

public interface PortfolioMapper {
	public Portfolio selectById(String id);
	public List<Portfolio> selectAll();
	public void addPortfolio(Portfolio portfolio);
}
