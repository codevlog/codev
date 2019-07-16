package com.codev.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.codev.mapper.PortfolioMapper;
import com.codev.vo.Portfolio;

@Repository
public class PortfolioDaoImpl implements PortfolioDao {
	@Autowired
	PortfolioMapper mapper;
	
	@Override
	public Portfolio selectById(String id) {
		return mapper.selectById(id);
	}
	
	@Override
	public List<Portfolio> selectAll() {
		return mapper.selectAll();
	}

	@Override
	public void addPortfolio(Portfolio portfolio) {
		mapper.addPortfolio(portfolio);
	}
}
