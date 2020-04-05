package com.proj.web.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.proj.web.vo.HrefVO;
import com.proj.web.vo.MemberVO;

@Repository
public class MemberDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	public int crawler(MemberVO vo){
		int result = 0;
		
		try {
			MemberMapper mapper= 
					sqlSession.getMapper(MemberMapper.class); 
			
			result = mapper.crawler(vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	};
	
	public int crawler2(HrefVO vo2){
		int result2 = 0;
		
		try {
			MemberMapper mapper= 
					sqlSession.getMapper(MemberMapper.class); 
			
			result2 = mapper.crawler2(vo2);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result2;
	};
	
	
	
	}
