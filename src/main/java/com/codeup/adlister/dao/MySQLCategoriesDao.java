package com.codeup.adlister.dao;

import com.mysql.cj.jdbc.Driver;

import java.sql.*;

public class MySQLCategoriesDao implements Categories {
	private Connection connection = null;

	public MySQLCategoriesDao(Config config) {
		try {
			DriverManager.registerDriver(new Driver());
			connection = DriverManager.getConnection(
					config.getUrl(),
					config.getUser(),
					config.getPassword()
			);
		} catch (SQLException e) {
			throw new RuntimeException("Error connecting to database.", e);
		}
	}


	@Override
	public void insert(long adId, long categoryId) {
		try {
			String query = "INSERT INTO ad_categories(ad_id, category_id) VALUES (?, ?)";
			PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
			stmt.setLong(1, adId);
			stmt.setLong(2, categoryId);
			stmt.executeUpdate();
		} catch (SQLException e) {
			throw new RuntimeException("Error adding category.", e);
		}
	}
}
