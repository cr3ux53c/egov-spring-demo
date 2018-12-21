package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.dao.SearchDAO;
import com.example.demo.vo.SearchVO;

@Controller
public class BasicController {

	@Autowired
	SearchDAO searchDAO;

	@RequestMapping(value="insert.do")
	@ResponseBody
	public String insert(@RequestParam(name="text", required=false) String text) {
		searchDAO.insertSearch(text);
		return "";
	}

	@RequestMapping(value="select.do")
	@ResponseBody
	public List<SearchVO> select(Model model) {
		List<SearchVO> list = searchDAO.selectSearch();
		return list;
	}
	
	@RequestMapping(value="index.do")
	public String index(Model model, @RequestParam(name="text", required=false) String text) {
//		if(text != null) {
//			searchDAO.insertSearch(text);
//			return "redirect:/index.do";
//		}
//		List<SearchVO> list = searchDAO.selectSearch();
//		
//		model.addAttribute("key", list);
		return "index";
	}
	
//	@RequestMapping("search.do")
//	public String search(@RequestParam("text") String text, Model model) {
//		searchDAO.insertSearch(text);
//		List<SearchVO> list = searchDAO.selectSearch();
//
//		model.addAttribute("key", list);
//		return "view";
//	}

}
