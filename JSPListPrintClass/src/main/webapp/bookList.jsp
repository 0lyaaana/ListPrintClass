<%-- 
	스크립틀릿과 표현식을 이용해 도서 리스트 출력하기
	table 태그를 사용할 것 
--%>
<%@page import="com.jspstudy.ch03.vo.Book"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립틀릿과 표현식을 이용해 도서 리스트 출력</title>
<style>
html, body{
height:100%;
margin: 0;
display: flex;
justify-content: center;
position: relative;
}

body{
width: 600px;
height: 850px;
box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.5); /* 위, 아래, 퍼짐 정도, (a)투명도 */
display: flex;
justify-content: center; /*가로 정렬*/ 
margin: 0 auto;
}

h2{
text-align: center;
}

.line{
border: 1px solid #A0D8E2;
width: 500px;
margin: auto;
}

.hLink{
justify-content: center;
position: absolute; /*상위 요소에 상대적 포지션 적용시키기*/
top: 800px;
}

a{
margin: 10px;
font-size: 10px;
}

.line1{
border: 1px solid #A0D8E2;
width: 500px;
margin: auto;
border-style: dotted; 
margin: 5px 0;
}

.line2{
border: 1px solid rgba(0, 0, 0, 0.5);
width: 500px;
margin: auto;
border-style: dotted; 
margin: 5px 0;
}

table{
position: absolute;
top: 80px;
width: 500px;
margin: 0 auto;
table-layout: fixed;
}

.font{
font-size: 12px;
margin: 0 auto;
}

h4{
margin: 0 auto;
}

td.firstrow {
  width: 30%; /* 이미지가 포함된 첫 번째 열의 너비를 20%로 설정 */
}

td.secondrow {
  width: 70%; /* 도서 정보가 포함된 두 번째 열의 너비를 80%로 설정 */
}



</style>
</head>

<body>
<div class="div1">
<h2>도서 리스트</h2>
<p class="line"></p>
</div>

<%
ArrayList<Book> bookList = new ArrayList<>();
Book books = new Book("images/javawebprogramming.jpg", "[도서] 프로젝트로 배우는 자바 웹 프로그래밍", "황희정 저 | 한빛아카데미 | 2014년 01월", "30,000원 --> 24,000원(20%할인) | 포인트 2,400원(10%지급)", "도착 예상일 : 지금 주문하면 오늘 도착예정 | 판매지수 : 1,980");
bookList.add(books);
books = new Book("images/jsp&servlet.jpg", "[도서] 뇌를 자극하는 JSP & Servlet", "김운명 저 | 한빛미디어 | 2010년 12월", "30,000원 --> 27,000원(10%할인) | 포인트 2,700원(10%지급)", "도착 예상일 : 지금 주문하면 내일 도착예정 | 판매지수 : 1,023");
bookList.add(books);
books = new Book("images/headfirstjsp.jpg", "[도서] Head First Servlet & JSP", "케이시 시에라 동저/김종호 역 | 한빛미디어 | 2009년 02월", "32,000원 --> 25,600원(20%할인) | 포인트 2,560원(10%지급)", "도착 예상일 : 지금 주문하면 오늘 도착예정 | 판매지수 : 1,011");
bookList.add(books);
books = new Book("images/jsp2.3webprogramming.jpg", "[도서] 최범균의 JSP2.3 웹프로그래밍", "최범균 저 | 가메출판사 | 2013년 02월", "25,000원 --> 22,500원(10%할인) | 포인트 2,250원(10%지급)", "도착 예상일 : 지금 주문하면 모레 도착예정 | 판매지수 : 2,012");
bookList.add(books);
books = new Book("images/jsp&servlet_oracle&eclipse.jpg", "[도서] 백견불여일타 JSP&Servlet : Oracle&Eclipse", "성윤정 저 | 로드북 | 2014년 07월", "27,000원 --> 24,300원(10%할인) | 포인트 2,430원(10%지급)", "도착 예상일 : 지금 주문하면 내일 도착예정 | 판매지수 : 1,095");
bookList.add(books);
%>

<table>
<%
for(int i = 0; i < bookList.size(); i++){
%>
<tr>
<td class="firstrow"><img class="imgs" src="<%= bookList.get(i).getImg()%>"></td>
    <td class="secondrow"><h4><%= bookList.get(i).getTitle() %></h4><br>
    <p class="font"><%= bookList.get(i).getAuthor() %></p>
    <p class="font"><%= bookList.get(i).getPrice() %></p>
    <p class="font"><%= bookList.get(i).getDelivery() %></p></td>
</tr>

<% if(i == bookList.size()-1){ %>
<tr><td colspan="2"><p class="line1"></p></td></tr>
<% } else{ %>
<tr><td colspan="2"><p class="line2"></p></td></tr>
<% }
} %>
</table>

<div class="hLink">
<a href="/bookListJSTL.jsp" target="_blank">도서 리스트</a>
<a href="/lottoNumListJSTL.jsp" target="_blank">로또 당첨 번호 리스트</a>
</div>
</body>
</html>