package com.ezen.koh10.book;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
public class BookController {
	@Autowired
	SqlSession sqlSession;
	
	String imagepath = "C:\\이젠디지탈12\\spring\\day10_board\\src\\main\\webapp\\image";
	
	private static final Logger logger = LoggerFactory.getLogger(BookController.class);

	@RequestMapping(value = "/bookinput")
	public String bookinput() {
		
		return "bookinput";
	}
	
	@RequestMapping(value = "/booksave", method = RequestMethod.POST)
	public String booksave(MultipartHttpServletRequest mul) throws IllegalStateException, IOException {
		String bname = mul.getParameter("bname");
		String bwriter = mul.getParameter("bwriter");
		String content = mul.getParameter("content");
		int price = Integer.parseInt(mul.getParameter("price"));
		MultipartFile mf = mul.getFile("bpicture");
		String fname = mf.getOriginalFilename();
		mf.transferTo(new File(imagepath+"\\"+fname));
		
		Service ss = sqlSession.getMapper(Service.class);
		ss.insert(bname,bwriter,content,price,fname);
		return "redirect:/main";
	}
	
//	@RequestMapping(value = "/bookout")
//	public String bookout(Model mo) {
//		Service ss = sqlSession.getMapper(Service.class);
//		ArrayList<BookDTO> list = ss.bookout();
//		mo.addAttribute("list", list);
//		return "bookout";
//	}
	
	@RequestMapping(value = "/detail")
	public String detail(HttpServletRequest request, Model mo) {
		int bnum = Integer.parseInt(request.getParameter("bnum"));
		Service ss = sqlSession.getMapper(Service.class);
		count(bnum);
		ArrayList<BookDTO> list = ss.detailview(bnum);
		mo.addAttribute("list", list);
		return "detailview";
	}
	
	private void count(int bnum) {
		// 조회수 증가
		Service ss = sqlSession.getMapper(Service.class);
		ss.count(bnum);
	}

	@RequestMapping(value = "/reply")
	public String reply(HttpServletRequest request, Model mo) {
		int bnum = Integer.parseInt(request.getParameter("bnum"));
		Service ss = sqlSession.getMapper(Service.class);
		ArrayList<BookDTO> list = ss.replyview(bnum);
		mo.addAttribute("list", list);
		return "replyview";
	}
	
	@RequestMapping(value = "/replysave")
	public String replysave(HttpServletRequest request) {
		
		int groups = Integer.parseInt(request.getParameter("groups"));
		int step = Integer.parseInt(request.getParameter("step"));
		int indent = Integer.parseInt(request.getParameter("indent"));
		String bwriter = request.getParameter("bwriter");
		String bname = request.getParameter("bname");
		String content = request.getParameter("content");
		
		Service ss = sqlSession.getMapper(Service.class);
		stepup(groups,step);
		step++;
		indent++;
		ss.replysave(bwriter,bname,content,groups,step,indent);
		
		return "redirect:/main";
	}

	private void stepup(int groups, int step) {
		// 새 댓글 step 증가
		Service ss = sqlSession.getMapper(Service.class);
		ss.stepup(groups,step);
		
	}
	
	@RequestMapping(value="/page")
    public String ko16(HttpServletRequest request, PageDTO dto,Model mo) {
       String nowPage=request.getParameter("nowPage");
       String cntPerPage=request.getParameter("cntPerPage");
       Service ss = sqlSession.getMapper(Service.class);
       //전체레코드수구하기
       int total=ss.total();
       System.out.println("총 레코드 개수 : "+total);
       if(nowPage==null && cntPerPage == null) { // 처음 실행하면 현재 페이지와 전체 페이지 수는 null이다.
          nowPage="1";
          cntPerPage="5";
       }
       else if(nowPage==null) {
          nowPage="1";
       }
       else if(cntPerPage==null) {
          cntPerPage="5";
       }
       
       dto=new PageDTO(total,Integer.parseInt(nowPage),Integer.parseInt(cntPerPage));
       mo.addAttribute("paging",dto);
       mo.addAttribute("list",ss.page(dto));
       return "bookout";
    }
	
	
}
