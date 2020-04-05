package com.proj.web.controller;


import java.io.IOException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.proj.web.dao.FunctionDAO;
import com.proj.web.dao.MemberDAO;
import com.proj.web.vo.HrefVO;
import com.proj.web.vo.MemberVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class FunctionController {
	@Autowired
	private FunctionDAO dao;
	
	@RequestMapping(value = "function/realtime", method = RequestMethod.GET)
	public String realtime(Model model) {
		ArrayList<MemberDAO> placeList =dao.placeList();
		model.addAttribute("list",placeList);
		model.addAttribute("size",placeList.size());
		return "function/realtime";
	}
	
	@RequestMapping(value = "location", method = RequestMethod.GET)
	public String home() {
		return "function/myLocation";
	}
	
	}	
