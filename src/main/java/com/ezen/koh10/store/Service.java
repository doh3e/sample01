package com.ezen.koh10.store;

import java.util.ArrayList;

public interface Service {
	void insert(String place, String carname, int su, int price);
	
	ArrayList<StoreDTO> sort();

	ArrayList<StoreDTO> sort1();

	ArrayList<StoreDTO> sort2();

	ArrayList<StoreDTO> sort3();

	ArrayList<StoreDTO> sort4();
	
	/* 페이징처리 3단계*/
	public int total();
	
	public ArrayList<StoreDTO> page(PageDTO dto);
	/* 페이징처리 3단계*/

}
