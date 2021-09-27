<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2> 게시글 작성 </h2>

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
        <input type="text" class="form-control" id="assign" name="assign" placeholder="내용을 입력하세요.">
      </div>

      <div class="form-group">
        <label for="perform">수행과제</label>
        <input type="text" class="form-control" id="perform" name="perform" rows="3"></textarea>
      </div>

       <div class="form-group">
        <label for="fail">실패사례</label>
        <input type="text" class="form-control" id="fail" name="fail" rows="3"></textarea>
      </div>

      <button type="submit" class="btn btn-primary">작성</button>
    </form>
    <button class="btn btn-danger" onclick="location.href='/tmp'">리스트</button>  <!-- 추가 -->

</div>


 <%@ include file="bootstrap.jsp" %>

</body>
</html>
