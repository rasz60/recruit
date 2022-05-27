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

<style>
td {
	font-size: 14px;
}

</style>

<script>

var now = [];

<c:forEach items="${list}" var="dto">
	
	var obj = {
			id : 'infobox' + '${dto.idnum}',
			now : '${dto.rCurrent}'
	};
		
	now.push(obj);
	
</c:forEach>

</script>

</head>

<body>

<section class="container border">

	<p class="mt-2 font-italic display-4 text-center">Recruit</p>
	
	<hr />
	
	<a href="https://calendar.google.com/calendar/u/0/r/month/2022/5/1?tab=rc&pli=1" target="_blink" class="btn btn-sm btn-primary mb-2 float-right ml-1">상세일정</a>
	<a href="reg" class="btn btn-sm btn-dark mb-2 float-right">등록</a>
	
	<span class="mx-3"></span>
	
	<button id="show_all" class="btn btn-sm btn-default font-italic">전체보기</button>
	<button id="show_paper" class="btn btn-sm btn-default font-italic">서류 대기중</button>
	<button id="show_test" class="btn btn-sm btn-default font-italic">코딩테스트</button>
	<button id="show_1st" class="btn btn-sm btn-default font-italic">1차 대기중</button>
	<button id="show_2nd" class="btn btn-sm btn-default font-italic">2차 대기중</button>
	<button id="show_over" class="btn btn-sm btn-default font-italic">불합격</button>
	<button id="toggle_over" class="btn btn-sm btn-default font-italic">불합격 제외하기</button>
	
	
	
	<table id="table" class="table table-hover text-center">
		<thead>
			<tr class="row mx-0">
				<th class="col-4">회사명</th>
				<th class="col-2">지원일</th>
				<th class="col-2">마감일</th>
				<th class="col-2">현황</th>
				<th class="col-1">링크</th>
				<th class="col-1">위치</th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach items="${list}" var="dto">
				<tr id="infobox${dto.idnum }" class="row mx-0 infobox${dto.idnum } infomain" style="cursor: pointer;">
					<td id="name" class="name col-4">${dto.cname}</td>
					<td id="date" class="date col-2">${dto.rdate}</td>
					<td id="end_date" class="end_date col-2">${dto.endDate}</td>
					<td id="now" class="now col-2">${dto.rCurrent}</td>

					<td id="location" class="location col-1">${dto.rLocation}</td>
					
					<td class="link col-1">
						<a href="${dto.rLink}" target="_blink">
							<i class="fa-solid fa-arrow-up-right-from-square"></i>
						</a>
					</td>
					
				</tr>
				
				<tr class="row mx-0 infobox${dto.idnum } infosub d-none bg-light py-2">
					<td class="col-2 border-bottom font-italic ml-5 mr-2 mb-2"><b>포지션</b></td>
					<td class="col-7 border-bottom font-italic mr-2 mb-2"><b>진행상황</b></td>
					<td class="col-2 border-bottom font-italic mb-2"><b>예상연봉</b></td>
					<td class="col-2 border rounded ml-5 mr-2" style="border-top: none;">${dto.rPosition}</td>
					<td class="col-7 border rounded mr-2 text-left" style="border-top: none;">${dto.rDesc}</td>
					<td class="col-2 border rounded" style="border-top: none;">${dto.pay }만원</td>
					<td class="col-12 row mx-0 justify-content-center" style="border-top: none;">
						<a href="mod?idnum=${dto.idnum }" class="col-5 btn btn-sm btn-primary border-white">수정</a>
						<a href="del?idnum=${dto.idnum }" class="col-5 btn btn-sm btn-danger border-white">삭제</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</section>

<script>

let overCount = 0;
let count = now.length;

$(document).ready(function() {
	
	$('span').text('총 ' + count + '건');
	
	$('.btn-default').click(function() {
		
		var id = $(this).attr('id');
		var txt = $(this).text();
		
		$('tr.infosub').addClass('d-none');
		
		if ( id == 'toggle_over' ) {
			
			var count_over = 0;
			overCount++;
			
			if ( overCount%2 != 0 ) {
				$(this).addClass('btn-info');
			} else {
				$(this).removeClass('btn-info');
			}
			
			for ( var i = 0; i < now.length; i++ ) {
				
				var obj = now[i];

				if ( obj.now == '불합격' && overCount%2 != 0 ) {
					$("tr#"+obj.id).addClass('d-none');
					count_over++;
				} 
				
				else if ( obj.now == '불합격' && overCount%2 == 0 ){
					$("tr#"+obj.id).removeClass('d-none');
				}
				
			}
			
			if ( count_over > 0 ) {
				$('span').text('총 ' + (count-count_over) + '건');
			} 
	
			else {
				$('span').text('총 ' + count + '건');
			}

		} 
		
		else if ( id == 'show_all' ) {
			count = now.length;
			$('tr.infomain').removeClass('d-none');
			$('span').text('총 ' + count + '건');
			$('button#toggle_over').removeClass('d-none');
			
			$('.btn-default').removeClass('btn-info');
			$('.btn-default').removeClass('btn-dark');
			$(this).addClass('btn-dark');
			
			if ( overCount%2 != 0 ) {
				overCount++;
			}
			
		}
		
		else {
			$('.btn-default').removeClass('btn-info');
			$('.btn-default').removeClass('btn-dark');
			$(this).addClass('btn-dark');
			
			showWhat(txt, now);
			
		}
		
		
	});
	
	$('tr.infomain').click(function() {
		var id = $(this).attr('id');
		
		$('tr.infomain').removeClass('bg-light');
		$(this).addClass('bg-light');
		
		$('tr.infosub').addClass('d-none');
		$('tr.infosub.' + id).removeClass('d-none');
		
		
	})
});

function showWhat(txt, arr) {
	
	var show_count = 0;
	
	for ( var i = 0; i < arr.length; i++ ) {
		
		var obj = arr[i];

		if ( obj.now == txt ) {
			
			$("tr#"+obj.id).removeClass('d-none');
			show_count++;
		} 
		
		else {
			
			$("tr#"+obj.id).addClass('d-none');
			
		}
		
	}
	
	count = show_count;
	
	$('span').text('총 ' + show_count + '건');
	$('button#toggle_over').addClass('d-none');
}
</script>
</body>
</html>
