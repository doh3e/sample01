package com.ezen.koh10.book;

import java.util.ArrayList;

public interface Service {

	void insert(String bname, String bwriter, String content, int price, String fname);

	ArrayList<BookDTO> bookout();

	ArrayList<BookDTO> detailview(int bnum);

	void count(int bnum);

	ArrayList<BookDTO> replyview(int bnum);

	void stepup(int groups, int step);

	void replysave(String bwriter, String bname, String content, int groups, int step, int indent);
	
	public int total();
	
	public ArrayList<BookDTO> page(PageDTO dto);



}
