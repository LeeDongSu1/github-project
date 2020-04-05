package com.proj.web.controller;


import java.io.IOException;
import java.util.ArrayList;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.proj.web.dao.MemberDAO;
import com.proj.web.vo.HrefVO;
import com.proj.web.vo.MemberVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	private MemberDAO dao;
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "main";
	}
	
	@RequestMapping(value = "projMain", method = RequestMethod.GET)
	public String projMain() {
		return "projMain";
	}

	@RequestMapping(value = "crawler", method = RequestMethod.GET) 
	   public String main() {
		
		String[] city ={"논현동"};
		//"개포동","일원동","논현동","대치동","도곡동"
		//"삼성동","세곡동","율현동","자곡동","수서동"
		//"신사동","압구정동","역삼동","수서동","일원동"

		ArrayList<String> link = new ArrayList<String>(); 
		ArrayList<String> place = new ArrayList<String>();
		HrefVO vo2;
		for (int i = 0; i < city.length; i++) {
			String url = "https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query="+city[i]+"+술집";	
		    
            String selector = "a.name";
            Document doc = null;       
           
         try 
         { 
            doc = Jsoup.connect(url).get();
         }
         catch (IOException e)
         {              
           e.printStackTrace();
         }
         Elements titles = doc.body().select(selector);
         
         for (int j = 0; j < titles.size(); j++) {
        	 String href = titles.get(j).attr("abs:href");	
        	 link.add(href);
        	 
        	//링크 db 삽입
        	 vo2 = new HrefVO(link.get(j));
 			try {
 				dao.crawler2(vo2);	
 			} catch (Exception e) {
 				e.printStackTrace();
 			}
		}
        System.out.println("0");
	}
		
         
        System.out.println(link);  		//맛집 주소
        System.out.println(link.size());  //맛집 주소 개수
		  
		for (int k = 0; k < link.size(); k++) { 
			String url2 = link.get(k);
			   String selector2 = "strong.name";
	           String selector3 = "div.txt";
	           String selector4 = "span.category";
 	           Document doc3 = null;    
	          
			  try { doc3 = Jsoup.connect(url2).get();
			  }catch (IOException e) {
			  System.out.println(e.getMessage());
			  continue; 
			  }
			  Elements content0 = doc3.body().select(selector2);
			  Elements content = doc3.body().select(selector3);
			  Elements content2 = doc3.body().select(selector4);
			  if(content.get(1).text().contains("서울")) { 
				  place.add(content0.get(0).text()); //가게명
				  place.add(content.get(0).text());  //전화번호
				  place.add(content.get(1).text().replace("지도보기",""));  //주소
				  place.add(content.get(2).text());  //영업시간
				  place.add(content.get(3).text());  //메뉴
				  place.add(content2.get(0).text()); //카테고리
			  }
			  System.out.println("1");
		}	  
			  
		
		
			  // DB에 저장
		MemberVO vo;
		for (int f = 1; f < link.size()+1; f++) {
			int temp = 6 * f;
			
			vo = new MemberVO(
					place.get(temp-6),
					place.get(temp-5),
					place.get(temp-4),
					place.get(temp-3),
					place.get(temp-2),
					place.get(temp-1)
					);
			try {
				dao.crawler(vo);	
			} catch (Exception e) {
				e.printStackTrace();
			}
			 System.out.println("2");
		}
		System.out.println("End!");

			   return "redirect:/";
			} 
	}	
