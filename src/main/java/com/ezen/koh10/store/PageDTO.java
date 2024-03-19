package com.ezen.koh10.store;

public class PageDTO {
//  start, end
	private int nowPage, startPage, endPage, total, cntPerPage, lastPage, start, end;
	private int cntPage=3;  //한 화면에 표시할 페이지수갯수
	public PageDTO() {}
	public PageDTO(int total, int nowPage, int cntPerPage) {
	setNowPage(nowPage);
	setCntPerPage(cntPerPage);
	setTotal(total);
	
	calcLastPage(getTotal(), getCntPerPage()); // �쟾泥� �븘�슂�븳 �럹�씠吏� �닔(珥� �젅肄붾뱶 �닔(異쒕젰�뿉�꽌 湲� 17媛쒕�� �꽔�뿀�떎.), 5(�븳 �럹�씠吏��떦 蹂댁씠�뒗 湲��쓽 �닔))
	calcStartEndPage(getNowPage(), cntPage);
	calcStartEnd(getNowPage(), getCntPerPage());                  
	}   
	
	//총페이지수 구하기
	public void calcLastPage(int total, int cntPerPage) { // �쟾泥� �븘�슂�븳 �럹�씠吏� �닔(珥� �젅肄붾뱶 �닔(17), 5)
	setLastPage((int) Math.ceil((double)total / (double)cntPerPage)); // 4 = 17 / 5 => 珥� 4�럹�씠吏�媛� 留뚮뱾�뼱吏�
	              }   
	//화면에 시작페이지와 마지막페이지 구하기
	public void calcStartEndPage(int nowPage, int cntPage) { // 1(�쁽�옱 �럹�씠吏�) , 3(�븳 �솕硫댁뿉 �몴�떆�븯怨좎옄 �븯�뒗 �럹�씠吏� �닽�옄�쓽 �닔(1 2 3 �뼳))
	setEndPage(((int)Math.ceil((double)nowPage / (double)cntPage)) * cntPage); // ceil(諛섏삱由�)(1/3) * 3 = 3(EndPage)
	if (getLastPage() < getEndPage()) { // 4 < 3
	setEndPage(getLastPage()); // 4(if 議곌굔�씠 �꽦由쎈릺吏� �븡�븘�꽌 洹몃깷 EndPage 洹몃�濡� 媛��졇���꽌 4(�삤瑜몄そ LastPage�뒗 議곌굔�씠 留욎� �븡�븘�꽌 �떊寃� �븞�뜥�룄 �맖))
	}
	setStartPage(getEndPage() - cntPage + 1); // 4 - 3 + 1 = 0
	if(getStartPage()<1) { // 0 < 1
	   setStartPage(1); 
	   }
	}               
	//DB 쿼리에 필요한 시작행과 마지막행값 구하기 
	public void calcStartEnd(int nowPage, int cntPerPage) { // 1, 5 // 留뚯빟 2, 5硫�
	setEnd(nowPage * cntPerPage); // 1 * 5 = 5(end) // 2 * 5 = 10
	setStart(getEnd() - cntPerPage + 1); // 5 - 5 + 1 = 1(start) // 10 - 5 + 1 = 6
	}
	            
	public int getNowPage() {
	   return nowPage;   
	   }
	public void setNowPage(int nowPage) {
	   this.nowPage = nowPage;   
	   }
	public int getStartPage() {   
	   return startPage;
	   }
	public void setStartPage(int startPage) {
	   this.startPage = startPage;
	   }
	public int getEndPage() {
	   return endPage;
	   }
	public void setEndPage(int endPage) {
	   this.endPage = endPage;
	   }
	public int getTotal() {
	   return total;
	   }
	public void setTotal(int total) {
	   this.total = total;
	   }
	public int getCntPerPage() {
	   return cntPerPage;
	   }
	public void setCntPerPage(int cntPerPage) {
	   this.cntPerPage = cntPerPage;
	   }
	public int getLastPage() {
	   return lastPage;
	   }
	public void setLastPage(int lastPage) {
	   this.lastPage = lastPage;
	   }
	public int getStart() {
	   return start;
	   }
	public void setStart(int start) {
	   this.start = start;
	   }
	public int getEnd() {
	   return end;
	   }
	public void setEnd(int end) {
	   this.end = end;
	   }
	public int getCntPage() {
	   return cntPage;
	   }
	public void setCntPage(int cntPage) {
	   this.cntPage = cntPage;
	   }

	
}
