package com.proj.web.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.proj.web.vo.HrefVO;
import com.proj.web.vo.LocationVO;
import com.proj.web.vo.MemberVO;

@Repository
public class FunctionDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	public ArrayList<MemberDAO> placeList(){
		ArrayList<MemberDAO> list = null;
		
		try {
			FunctionMapper mapper= 
					sqlSession.getMapper(FunctionMapper.class); 

			list = mapper.placeList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	};
	
	public ArrayList<LocationVO> nearby(LocationVO location){
		ArrayList<LocationVO> list = null;
		try {
			FunctionMapper mapper= 
					sqlSession.getMapper(FunctionMapper.class); 

			list = mapper.nearby(location);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	};
	
	public ArrayList<HrefVO> linkList(){
		ArrayList<HrefVO> list = null;
		try {
			FunctionMapper mapper= 
					sqlSession.getMapper(FunctionMapper.class); 

			list = mapper.linkList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	};
	
	public ArrayList<MemberVO> keywordSearching(String keyword, String address, String choice){
		ArrayList<MemberVO> list = null;
		try {
			FunctionMapper mapper= 
					sqlSession.getMapper(FunctionMapper.class); 

			list = mapper.keywordSearching(keyword,address,choice);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	};
}

	

