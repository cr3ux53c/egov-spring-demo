package com.example.demo.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class SearchDAO {
	@Autowired
	JdbcTemplate jt;
	
	public void insertSearch(String text){
		jt.update("INSERT INTO SEARCH_HISTORY VALUES (NULL, ?, NOW())", text);
	}
}
