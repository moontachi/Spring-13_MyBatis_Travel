<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="common.jsp" %>    

<style type="text/css">
	.err{
	font-size: 9pt;
	color: red;
	font-weight: bold;
	}
</style>

<!-- *.tv요청 
travel.controller 패키지
travel.model 패키지
travel.mybatis 패키지
-->
web-inf\travel\TravelUpdateForm.jsp<br>
<%
	String[] area = {"유럽","동남아","일본","중국"};
	pageContext.setAttribute("area", area); 
%>
<form:form commandName="travel"  method="post"  action="update.tv">
	<h1><span>여행 정보 수정 화면</span></h1>
	<input type="hidden" name="num" id="num" value="${travel.num }">
	<input type="hidden" name="pageNumber" value="${pageNumber }">
	<p>
		<label for="name">이름</label>
		<input type="text" name="name" id="name" value="${travel.name }">
		<form:errors cssClass="err" path="name"/>
	</p>

	<p>
		<label for="age">나이</label>
		<input type="text" name="age" id="age" value="${travel.age }">
		<form:errors cssClass="err" path="age"/>
	</p>
	<p>
		<label for="area">관심지역</label>
	<%-- 
		<input type="checkbox" name="area" id="area" value="유럽" <c:if test="${fn:contains(travel.area,'유럽') }">checked</c:if>>유럽
		<input type="checkbox" name="area" id="area" value="동남아" <c:if test="${fn:contains(travel.area,'동남아') }">checked</c:if>>동남아
		<input type="checkbox" name="area" id="area" value="일본" <c:if test="${fn:contains(travel.area,'일본') }">checked</c:if>>일본
		<input type="checkbox" name="area" id="area" value="중국" <c:if test="${fn:contains(travel.area,'중국') }">checked</c:if>>중국
	--%>
	
		<c:forEach var="i" begin="0" end="${fn:length(area)-1 }">
			<input type="checkbox" name="area" id="area" value="${area[i] }" <c:if test="${fn:contains(travel.area,area[i]) }">checked</c:if>>${area[i] }
		</c:forEach>
		<form:errors cssClass="err" path="area"/>
	</p>
	
	<p>
		<label for="style">여행 타입</label>
		<input type="radio" name="style" id="style" value="패키지" <c:if test="${travel.style == '패키지'}">checked</c:if>>패키지
		<input type="radio" name="style" id="style" value="크루즈" <c:if test="${travel.style == '크루즈'}">checked</c:if>>크루즈
		<input type="radio" name="style" id="style" value="자유여행" <c:if test="${travel.style == '자유여행'}">checked</c:if>>자유여행
		<input type="radio" name="style" id="style" value="골프여행" <c:if test="${travel.style == '골프여행'}">checked</c:if>>골프여행
		<form:errors cssClass="err" path="style"/>
	</p>
	
	 <p>
		<label for="price">가격</label>
		<select name = "price" id="price" >
			<option value="">선택하세요</option>
			<option value="100~200" <c:if test="${travel.price == '100~200'}">selected</c:if>>100~200</option>
			<option value="200~300" <c:if test="${travel.price == '200~300'}">selected</c:if>>200~300</option>
			<option value="300~400" <c:if test="${travel.price == '300~400'}">selected</c:if>>300~400</option>
			<option value="400~500" <c:if test="${travel.price == '400~500'}">selected</c:if>>400~500</option>
			<form:errors cssClass="err" path="price"/>
		</select>
		<form:errors cssClass="err" path="price"/>
	</p>
	<p class="btnRow">
			<input type="submit" value="수정하기" id="btnSubmit">		
		</p>
</form:form>
