package com.example.demo.dao;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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

	public void insertSearch(String text) {
		jt.update("INSERT INTO SEARCH_HISTORY VALUES (NULL, ?, NOW())", text);
	}

	public List<SearchVO> selectSearch() {
		List<SearchVO> searchVOList = new ArrayList<SearchVO>();
		try{
			List<Map<String, Object>> list = jt.queryForList("select TXT, SEARCH_DATE from search_history order by SEARCH_DATE desc limit 10");
			
			for (Map<String, Object> node : list){
				SearchVO searchVO = new SearchVO();
				searchVO.setSearchText(node.get("TXT").toString());
				Date date = new Date();
				date = new SimpleDateFormat("yyyyy-mm-dd hh:mm:ss").parse(node.get("SEARCH_DATE").toString()); 
				searchVO.setSearchDate(date);
				searchVOList.add(searchVO);
			}
			
		}catch (EmptyResultDataAccessException e){
			return null;
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		return searchVOList;
	}

}
