<%-- 
	EL과 JSTL을 이용해 로또 당첨 번호 리스트 출력
	table 태그를 사용하지 말 것  
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@ page import = "com.jspstudy.ch03.vo.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL과 JSTL을 이용해 로또 당첨 번호 리스트 출력</title>
</head>
<style>
	h2 {
		text-align: center;
	}
	
	ul {
		list-style-type: none;
		width: 500px;
		height: 530px;
		border-radius: 5px;
		background-color: rgba(0, 0, 0, 0.1);
		margin: 0 auto;
	}
	
	ul > li {
		height: 25px;
		background-color: white;
	}
	
	.bonus {
		color: gray;
		font-size: 12px;
	}
	
	li {
		border: 1px solid gray;
		border-radius: 5px;
		width: 500px;
		padding: 10px;
		margin: 5px auto;
		display: flex;
		
	}
	
	img {
		width: 30px;
		height: 30px;		
	}
	
	.times {
		color: blue;
		font-weight: bold; 
	}
	
	.link {
		text-align: center;
	}	

</style>
<body>	
<h2>로또 당첨 번호 리스트</h2>

 <%
ArrayList<LottoNum> lottoList = new ArrayList<>();
	
LottoNum lotto = new LottoNum("907회", 21, 27, 29, 38, 40, 44, 37);
lottoList.add(lotto);
lotto = new LottoNum("908회", 3, 16, 21, 22, 23, 44, 30);
lottoList.add(lotto);
lotto = new LottoNum("909회", 7, 24, 29, 30, 34, 35, 33);
lottoList.add(lotto);
lotto = new LottoNum("910회", 1, 11, 17, 27, 35, 39, 31);
lottoList.add(lotto);
lotto = new LottoNum("911회", 4, 5, 12, 14, 32, 42, 35);
lottoList.add(lotto);
lotto = new LottoNum("912회", 5, 8, 18, 21, 22, 38, 10);
lottoList.add(lotto);
lotto = new LottoNum("913회", 6, 14, 16, 21, 27, 37, 40);
lottoList.add(lotto);
lotto = new LottoNum("914회", 16, 19, 24, 33, 42, 44, 27);
lottoList.add(lotto);
lotto = new LottoNum("915회", 2, 6, 11, 13, 22, 37, 14);
lottoList.add(lotto);
lotto = new LottoNum("916회", 9, 21, 22, 32, 35, 36, 17);
lottoList.add(lotto);

request.setAttribute("lottoList", lottoList);

%>
<ul>
<c:forEach var="lotto" items="${lottoList}">
<li>
<div class=times>${lotto.times}</div> &emsp;&emsp;&emsp;
<img src="images/lotto_img/ball_${lotto.num1}.png"> &ensp;
<img src="images/lotto_img/ball_${lotto.num2}.png"> &ensp;
<img src="images/lotto_img/ball_${lotto.num3}.png"> &ensp;
<img src="images/lotto_img/ball_${lotto.num4}.png"> &ensp;
<img src="images/lotto_img/ball_${lotto.num5}.png"> &ensp;
<img src="images/lotto_img/ball_${lotto.num6}.png"> &emsp;
<div class=bonus> &emsp; + &emsp; 보너스번호</div> &emsp; <img src="images/lotto_img/ball_${lotto.bonusNum}.png">
</li>
</c:forEach>
</ul>

<p class = link>
<a href="bookListJSTL.jsp" target="_blank">도서 리스트</a>&emsp;
<a href="lottoNumListJSTL.jsp" target="_blank">로또 당첨 번호 리스트</a>
</p>

</body>
</html>

