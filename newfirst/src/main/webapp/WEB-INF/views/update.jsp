<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시글 수정</title>
</head>


<body>

<h2> 게시글 수정 </h2>

<div class="container">
    <form action="/updateProc" method="post">
      <div class="form-group">
        <label for="title">제목</label>
        <input type="text" class="form-control" id="title" name="title" value="${detail.title}">
      </div>
      <div class="form-group">
              <label for="perform">과제</label>
              <textarea class="form-control" id="assign" name="assign" rows="3">${detail.assign}</textarea>
            </div>
      <div class="form-group">
        <label for="perform">내용</label>
        <textarea class="form-control" id="perform" name="perform" rows="3">${detail.perform}</textarea>
      </div>

      <div class="form-group">
        <label for="perform">실패</label>
        <textarea class="form-control" id="fail" name="fail" rows="3">${detail.fail}</textarea>
      </div>
      <input type="hidden" name="id" value="${id}"/>
      <button type="submit" class="btn btn-primary">수정</button>

    </form>
    <button class="btn btn-danger" onclick="location.href='/tmp'">리스트</button>  <!-- 추가 -->

</div>

<%@ include file="bootstrap.jsp" %>





</body>
</html>
