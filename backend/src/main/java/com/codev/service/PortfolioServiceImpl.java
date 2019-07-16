package com.codev.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codev.dao.PortfolioDao;
import com.codev.vo.Portfolio;

@Service
public class PortfolioServiceImpl implements PortfolioService {
	@Autowired
	private PortfolioDao pDao;
	
	@Override
	public Portfolio selectById(String id) {
		return pDao.selectById(id);
	}

	@Override
	public List<Portfolio> selectAll() {
		return pDao.selectAll();
	}

	@Override
	public void addPortfolio(Portfolio portfolio) {
		pDao.addPortfolio(portfolio);
	}
}
