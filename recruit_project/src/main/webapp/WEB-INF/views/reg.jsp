<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>   
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://kit.fontawesome.com/b4e02812b5.js" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<title>recruit</title>
</head>

<body>

<section class="container border">

	<p class="mt-2 font-italic display-4 text-center">Recruit</p>
	
	<hr />
	
	<form action="reg_info" method="post">
	
		<div class="form-group">		
			<label for="cname">회사명</label>
			<input type="text" class="form-control" id="cname" name="cname" required />
		</div>
		
		<div class="form-group">		
			<label for="rlink">링크</label>
			<input type="text" class="form-control" id="rlink" name="rlink" required />
		</div>

		<div class="form-group">		
			<label for="interview" style="width: 100%">면접여부</label>
			<select name="interview" id="interview" class="custom-select" style="width: 100%">
				<option value="paper">서류전형</option>
				<option value="codingtest">코딩테스트</option>
				<option value="1st">1차</option>
				<option value="2nd">2차</option>
				<option value="fuck">불합격</option>
				<option value="final">합격</option>
			</select>
		</div>
				
		<div class="form-group row mx-0">
			<div class="col-6">
				<label for="rdate">지원일</label>
				<input type="date" class="form-control" id="rdate" name="rdate" required />
			</div>
		
			<div class="col-6">
				<label for="enddate">마감일</label>
				<input type="date" class="form-control" id="enddate" name="enddate" required />
			</div>
		</div>

		<div class="form-group row mx-0">		
			<div class="col-4">
				<label for="rPosition">포지션</label>
				<input type="text" class="form-control" id="rPosition" name="rPosition" />
			</div>
		
			<div class="col-4">
				<label for="rLocation">회사위치</label>
				<input type="text" class="form-control" id="rLocation" name="rLocation" />
			</div>
			
			<div class="col-4">
				<label for="pay">예상급여</label>
				<input type="number" class="form-control" id="pay" name="pay" />
			</div>
			
			<div class="col-12 mt-3">
				<p class="mb-1">진행내역</p>
				<label>
					<input type="checkbox" name="chk1" class="mr-2" value="open" />&nbsp;열람
				</label>
				
				<label>
					<input type="checkbox" name="chk2" class="mr-2" value="codingtest" />&nbsp;코딩테스트
				</label>
				
				
				<label>
					<input type="checkbox" name="chk3" class="mr-2" value="1st" />&nbsp;1차 면접
				</label>
				
				<label>
					<input type="checkbox" name="chk4" class="mr-2" value="2nd" />&nbsp;2차 면접
				</label>
			</div>
		</div>
		
		<hr />
		
		<div class="form-group row mx-0">
			<input type="submit" id="complete" class="btn btn-sm btn-primary col-6 border-white" value="작성"/>
			<a href="/recruit" id="goback" class="btn btn-sm btn-secondary col-6 border-white">목록</a>			
		</div>

	</form>
	
</section>

</body>
</html>
