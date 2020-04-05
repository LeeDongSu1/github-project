package com.proj.web.dao;

import com.proj.web.vo.HrefVO;
import com.proj.web.vo.MemberVO;

public interface MemberMapper {

	public int crawler(MemberVO vo);
	
	public int crawler2(HrefVO vo2);
	
}
