<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="common.jsp" %>
<script type="text/javascript">
	function insert(){
		location.href="insert.tv";
	}
	
	function goUpdate(num,pageNumber,pageSize){
		location.href="update.tv?num="+num+"&pageNumber="+pageNumber; 
	}
</script> 
travel\TravelList.jsp <br>
<h2> 여행 리스트 화면 </h2>
<!-- whatColumn=area, keyword=유럽 -->
<form action="list.tv" method="get">
	<select name="whatColumn">
		<option value="all">전체검색
		<option value="area">지역
		<option value="style">여행 타입
	</select>
	<input type="text" name="keyword" value="유럽">
	<input type="submit" value="검색">
</form>

<table border="1">
	<tr>
		<td colspan="8" align="right">
			<input type="button" value="추가하기" onClick="insert()">
		</td>	
	</tr>
	<tr>
		<th>번호</th>
		<th>이름</th>
		<th>나이</th>
		<th>관심지역</th>
		<th>여행타입</th>
		<th>예상비용</th>
		<th>삭제</th>
		<th>수정</th>
	</tr>
	
	<c:forEach items="${lists }" var="bean">
		<tr>
			<td>${bean.num }</td>
			<td>${bean.name }</td>
			<td>${bean.age }</td>
			<td>${bean.area }</td>
			<td>${bean.style }</td>
			<td>${bean.price }</td>
			<td><a href="delete.tv?num=${bean.num }&pageNumber=${pageInfo.pageNumber}">삭제</a></td>
			<td>
				<input type="button" value="수정" onclick="goUpdate('${bean.num }', '${pageInfo.pageNumber }')">			
			</td>																		
		</tr>
	</c:forEach>
</table>

${pageInfo.pagingHtml}