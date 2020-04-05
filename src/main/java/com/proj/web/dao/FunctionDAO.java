package com.proj.web.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.proj.web.vo.HrefVO;
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
	
	}
