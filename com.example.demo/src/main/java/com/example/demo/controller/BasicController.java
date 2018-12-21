package com.example.demo.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.dao.SearchDAO;
import com.example.demo.vo.SearchVO;

@Controller
public class BasicController {

	@Autowired
	SearchDAO searchDAO;

	@RequestMapping("view.do")
	public String view() {
		return "view";
	}

	@RequestMapping("search.do")
	public String search(@RequestParam("text") String text, Model model) {
		searchDAO.insertSearch(text);
		List<SearchVO> list = searchDAO.selectSearch();
		
		model.addAttribute("key", list);
		return "view_result";
	}

}
