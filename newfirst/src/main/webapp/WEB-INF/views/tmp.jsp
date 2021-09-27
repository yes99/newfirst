<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


<title>List</title>
<link rel="stylesheet" type="text/css" href="test.css"/>
<script src="/js/alert.js" type = text/javascript></script>

</head>
<body>

<header>
    <div class="row">
        <div class="bg-dark text-white p-5">
            <h1>교육일지 레이아웃 수정</h1>
        </div>
    </div>
</header>


<div class="container">
    <table class="table table-hover">
        <h2>
            게시글 목록
        </h2>
        <tr>
            <th>No</th>
            <th>date</th>
            <th>title</th>
        </tr>
          <c:forEach var="l" items="${tmp}">
              <tr onclick="location.href='/detail/${l.id}'"> <!-- 이 부분 수정! -->
                  <td>${l.id}</td>
                  <td>${l.date}</td>
                  <td>${l.title}</td>
              </tr>
          </c:forEach>
    </table>
</div>


<nav aria-label="...">
    <ul class="pagination justify-content-center">
        <c:if test="${paging.prev}">
            <span><a class="page-link" href='<c:url value="/tmp?page=${paging.startPage-1}"/>'>이전</a></span>
        </c:if>
        <c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="num">
            <span><a class="page-link" href='<c:url value="/tmp?page=${num}"/>'>${num}</a></span>
        </c:forEach>
        <c:if test="${paging.next && paging.endPage>0}">
            <span><a class="page-link" href='<c:url value="/tmp?page=${paging.endPage+1}"/>'>다음</a></span>
        </c:if>
    </ul>
</nav>



<div class="container">
    <form class = "container" action="/insertProc"  method="post">
        <h3>날짜 </h3>
        <p style="color:red;" id = "hdate" hidden>날짜를 입력하세요</p>
        <input type="date" id = "date" name="date">
        <div class = "mb-3">
            <label class="form-label"> <h3>제목 </h3></label>
            <p style="color:red;" id = "htitle" hidden>제목을 입력하세요</p>
            <input type="text input-lg" class="form-control"  id = "title" name="title">
        </div>
        <div class = "mb-3">
            <label class="form-label"> <h3>수행과제 </h3></label>
            <p style="color:red;">수행과제를 입력하세요</p>
            <textarea class="form-control"  rows="10" id = "assign" name="assign"></textarea>
        </div>
        <div class = "mb-3">
            <label class="form-label"> <h3>수행과정</h3> </label>
            <p style="color:red;">수행 과정을 입력하세요</p>
            <textarea class="form-control"  rows="10" id = "perform" name="perform"></textarea>
        </div>
        <div class = "mb-3">
            <label class="form-label"> <h3>실패 사례</h3> </label>
            <p style="color:red;">실패 사례를 입력하세요 </p>
            <textarea class="form-control"  rows="10" id = "fail" name="fail"></textarea>
        </div>

           <% String title = request.getParameter("title");%>
           <% String date = request.getParameter("date");%>
           <% String perform = request.getParameter("perform");%>
           <% String assign = request.getParameter("assign");%>
          <%  String fail = request.getParameter("fail");%>


        <button type="submit" class="btn btn-primary"> 제출</button>
        <button type="submit" class="btn btn-primary" onclick="alerttest()"> test</button>

    </form>

</div>


<div class = "mb-5 container-fluid">
    <hr>
    <p>@ cloudStudying <a href="#"> ojtojtojt  </a> <a href="#"> 레이아웃 푸터 연습</a></p>
</div>
<script type="text/javascript" src="test.js"></script>
<!-- Optional JavaScript; choose one of the two! -->

<!-- Option 1: Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>





</html>
