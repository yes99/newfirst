<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List</title>
<link rel="stylesheet" type="text/css" href="test.css"/>


</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">네비게이션 바 연습중</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">홈페이지</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">링크 </a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Dropdown
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#">ㅇㄹㅇㄹAction</a></li>
                        <li><a class="dropdown-item" href="#">ㅎㅇㅎㅇAnother action</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="#"> 다른거</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled">Disabled</a>
                </li>
            </ul>
            <form class="d-flex">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>



<h2> 게시글 목록 </h2>

<button class="btn btn-primary" onclick="location.href='/insert'">글쓰기</button>

<div class="container">
    <table class="table table-hover">
        <thead>
            <tr>
              <th>#</th>
              <th>Date</th>
              <th>Title</th>
              <th style="width: 20px;"></th>
            </tr>
        </thead>
        <tbody>
          <c:forEach var="l" items="${list}">
              <tr onclick="location.href='/detail/${l.id}'"> <!-- 이 부분 수정! -->
                  <td>${l.id}</td>
                  <td>${l.date}</td>
                  <td>${l.title}</td>
              </tr>
          </c:forEach>
        </tbody>
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
<div class="container">
    <form action="/insertProc" method="post">

      <div class="form-group">
        <label for="title">제목</label>
        <input type="text" class="form-control" id="title" name="title" placeholder="제목을 입력하세요.">
      </div>

      <div class="form-group">
        <label for="date">날짜</label>
        <input type="date" id = "date" name="date">
      </div>

      <div class="form-group">
        <label for="assign">과제</label>
        <textarea class="form-control" id="assign" name="assign" placeholder="내용을 입력하세요." rows="10">
      </div>

      <div class="form-group">
        <label for="perform">수행과제</label>
        <textarea class="form-control" id="perform" name="perform" rows="10"></textarea>
      </div>

       <div class="form-group">
        <label for="fail">실패사례</label>
        <textarea class="form-control" id="fail" name="fail" rows="10"></textarea>
      </div>

      <button type="submit" class="btn btn-primary">작성</button>
    </form>

</div>


<%@ include file="bootstrap.jsp" %>
</html>
