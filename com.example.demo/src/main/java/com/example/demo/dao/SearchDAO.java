package com.example.demo.dao;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.example.demo.vo.SearchVO;

@Repository
public class SearchDAO {
	@Autowired
	JdbcTemplate jt;
	SearchVO searchVO = new SearchVO();

	public void insertSearch(String text) {
		jt.update("INSERT INTO SEARCH_HISTORY VALUES (NULL, ?, NOW())", text);
	}

	public SearchVO selectSearch() {
		try{
			List<Map<String, Object>> list = jt.queryForList("select TXT, SEARCH_DATE from search_history order by SEARCH_DATE desc limit 10");
			searchVO.setSearchText(list.get(1).get("TXT").toString());
			Date date = new Date();
			date = new SimpleDateFormat("yyyyy-mm-dd hh:mm:ss").parse(list.get(2).get("SEARCH_DATE").toString()); 
			searchVO.setSearchDate(date);
		}catch (EmptyResultDataAccessException e){
			return null;
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		return searchVO;
	}

}
