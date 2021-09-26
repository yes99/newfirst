<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List</title>
</head>
<body>
<h2> 게시글 목록 </h2>

<button class="btn btn-primary" onclick="location.href='/insert'">글쓰기</button>

<div class="container">
    <table class="table table-hover">
        <tr>
            <th>No</th>
            <th>date</th>
            <th>title</th>
        </tr>
          <c:forEach var="l" items="${list}">
              <tr onclick="location.href='/detail/${l.id}'"> <!-- 이 부분 수정! -->
                  <td>${l.id}</td>
                  <td>${l.date}</td>
                  <td>${l.title}</td>
              </tr>
          </c:forEach>
    </table>
</div>
<ul class="paging">
    <c:if test="${paging.prev}">
        <span><a href='<c:url value="/list?page=${paging.startPage-1}"/>'>이전</a></span>
    </c:if>
    <c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="num">
        <span><a href='<c:url value="/list?page=${num}"/>'>${num}</a></span>
    </c:forEach>
    <c:if test="${paging.next && paging.endPage>0}">
        <span><a href='<c:url value="/list?page=${paging.endPage+1}"/>'>다음</a></span>
    </c:if>
</ul>


<%@ include file="bootstrap.jsp" %>
</html>
