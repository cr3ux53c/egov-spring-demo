package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.dao.SearchDAO;

@Controller
public class BasicController {

	@Autowired
	SearchDAO searchDAO;

	@RequestMapping("view.do")
	public String view() {
		return "view";
	}

	@RequestMapping("search.do")
	public String search(@RequestParam("text") String text) {
		searchDAO.insertSearch(text);

		return "view_result";
	}

}
