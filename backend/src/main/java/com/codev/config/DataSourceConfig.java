package com.codev.config;

import javax.sql.DataSource;

import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class DataSourceConfig {
	@SuppressWarnings("rawtypes")
	@Bean
	public DataSource getDataSource() {
		DataSourceBuilder dsb = DataSourceBuilder.create();
		dsb.driverClassName(_secret.DB_DRIVERCLASS);
		dsb.url(_secret.DB_URL);
		dsb.username(_secret.DB_USERNAME);
		dsb.password(_secret.DB_PASSWORD);
		return dsb.build();
	}
}
