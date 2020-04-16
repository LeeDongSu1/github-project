package com.proj.web.controller;


import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.proj.web.dao.FunctionDAO;
import com.proj.web.dao.MemberDAO;
import com.proj.web.vo.HrefVO;
import com.proj.web.vo.LocationVO;
import com.proj.web.vo.MemberVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class FunctionController {
	@Autowired
	private FunctionDAO dao;
	
	@ResponseBody
	@RequestMapping(value = "function/draw", method = RequestMethod.GET)
	public HashMap<String,Object>  draw(LocationVO location) {
		//ArrayList<MemberDAO> placeList =dao.placeList();
		ArrayList<LocationVO> locationList =dao.nearby(location);
		ArrayList<HrefVO> linkList = dao.linkList();
		
		//System.out.println(placeList.size());
		System.out.println(linkList.size());
		System.out.println(locationList.size());
		
		
		HashMap<String,Object> map = new HashMap<String,Object>();
		//map.put("place", placeList);
		map.put("location", locationList);
		map.put("link", linkList);
		
		return map;
	}
	
	@RequestMapping(value = "function/realtime", method = RequestMethod.GET)
	public String realtime() {
	return "function/realtime";
	}
	
	
	@RequestMapping(value = "function/keywordSearch", method = RequestMethod.GET)
	public String keywordSearch(String keyword, String address, String choice,Model model) {
		
			ArrayList<MemberVO> placelist =
				dao.keywordSearching(keyword, address, choice);		
		model.addAttribute("list",placelist);
	return "function/keywordSearch";
	}
	
	@RequestMapping(value = "function/searchMap", method = RequestMethod.GET)
	public String searchMap() {
	return "function/searchMap";
	}
	
	@ResponseBody
	@RequestMapping(value = "function/check", method = {RequestMethod.GET, RequestMethod.POST})
	public ArrayList<String> check(String start, String end, RedirectAttributes rttr) {
		ArrayList<String> list = new ArrayList<String>();
		list.add(start);
		list.add(end);
		return list;	
	}
	
	}	
