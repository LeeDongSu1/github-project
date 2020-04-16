package com.proj.web.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.proj.web.vo.HrefVO;
import com.proj.web.vo.LocationVO;
import com.proj.web.vo.MemberVO;

public interface FunctionMapper {

	public ArrayList<MemberDAO> placeList();
	
	public ArrayList<HrefVO> linkList();
	
	public ArrayList<MemberVO> keywordSearching(@Param("keyword")String keyword, @Param("address")String address,@Param("choice")String choice);
	
	public ArrayList<LocationVO> nearby(LocationVO location);
}
