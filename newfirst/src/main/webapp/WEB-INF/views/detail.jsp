<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Detail</title>
</head>
<body>


<h2> 게시글 상세 </h2>
<button class="btn btn-primary" onclick="location.href='/update/${detail.id}'">수정</button> <!-- 추가 -->
<button class="btn btn-danger" onclick="location.href='/delete/${detail.id}'">삭제</button>  <!-- 추가 -->


<div class="container">
    <form action="/insertProc" method="post">
      <div class="form-group">
        <label>금 넘버</label>
        <p>${detail.id}</p>
      </div>
      <div class="form-group">
        <label>제목</label>
        <p>${detail.title}</p>
      </div>
      <div class="form-group">
        <label>날짜</label>
        <p>${detail.date}</p>
      </div>
      <div class="form-group">
        <label>과제</label>
        <p>${detail.assign}</p>
      </div>
      <div class="form-group">
        <label>내용</label>
        <p>${detail.perform}</p>
      </div>
      <div class="form-group">
        <label>실패</label>
        <p>${detail.fail}</p>
      </div>
      <button type="submit" class="btn btn-primary">작성</button>

    </form>
    <button class="btn btn-danger" onclick="location.href='/tmp'">리스트</button>  <!-- 추가 -->

</div>


<%@ include file="bootstrap.jsp" %>




</body>
</html>
