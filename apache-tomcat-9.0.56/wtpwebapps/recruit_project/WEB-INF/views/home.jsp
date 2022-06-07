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

textarea {
	font-size: 14px;
	resize: none;
}

</style>

<script>

var now = [];

<c:forEach items="${list}" var="dto">
	
	var obj = {
			id : '${dto.idnum}',
			now : '${dto.rCurrent}',
			endDate : '${dto.endDate}',
			rDate : '${dto.rdate}',
			desc : '${dto.rDesc}'
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
	<button id="go_back" class="btn btn-sm btn-default font-italic d-none">전체보기</button>
	<button id="show_all" class="btn btn-sm btn-default btn-dark font-italic">전체보기</button>
	<button id="show_never" class="btn btn-sm btn-default font-italic">미열람</button>
	<button id="show_paper" class="btn btn-sm btn-default font-italic">서류 대기중</button>
	<button id="show_test" class="btn btn-sm btn-default font-italic">코딩테스트</button>
	<button id="show_1st" class="btn btn-sm btn-default font-italic">1차 대기중</button>
	<button id="show_2nd" class="btn btn-sm btn-default font-italic">2차 대기중</button>
	<button id="show_over" class="btn btn-sm btn-default font-italic">불합격</button>
	<button id="show_pass" class="btn btn-sm btn-default font-italic">합격</button>
	<button id="toggle_over1" class="btn btn-sm btn-default font-italic">불합격 제외하기</button>
	<button id="toggle_over2" class="btn btn-sm btn-default font-italic">마감 제외하기</button>
	
	<hr />
	
	<form action="search" id="search" class="row mx-0 my-2">
		<div class="form-group col-3 my-0">
			<select name="keyword" id="keyword" class="custom-select text-center" style="border: none; border-bottom : 1px solid #ced4da; border-radius: 0">
				<option value="cname">회사명</option>
				<option value="rdate">지원일</option>
				<option value="rLocation">위치</option>
				<option value="pay">예상연봉</option>
			</select>
		</div>
		
		<div id="cname" class="form-group col-8 my-0">
			<input type="text" name="cname" class="form-control border-none target1" style="border: none; border-bottom : 1px solid #ced4da; border-radius: 0" />
		</div>			
		
		<div id="rdate" class="form-inline col-8 my-0 d-none">		
			<input type="date" name="rdate1" class="form-control border-none" style="border: none; border-bottom : 1px solid #ced4da; border-radius: 0; width: 45%;" />
			<input type="date" name="rdate2" class="form-control border-none ml-4" style="border: none; border-bottom : 1px solid #ced4da; border-radius: 0; width: 45%;" />
		</div>

		<div id="rLocation" class="form-group col-8 my-0 d-none">
			<input type="text" name="rLocation" class="form-control border-none" style="border: none; border-bottom : 1px solid #ced4da; border-radius: 0" />
		</div>

		<div id="pay" class="form-group col-8 my-0 d-none">
			<input type="number" name="pay" max="9999" class="form-control border-none" style="border: none; border-bottom : 1px solid #ced4da; border-radius: 0" />
		</div>
		
		<button type="submit" id="searchBtn" class="btn btn-sm btn-dark col-1">
			<i class="fa-solid fa-magnifying-glass"></i>
		</button>
	</form>
	
	<table id="table" class="table table-hover text-center">
		<thead>
			<tr class="row mx-0">
				<th class="col-4">회사명</th>
				<th class="col-2">지원일</th>
				<th class="col-2">마감일</th>
				<th class="col-2">현황</th>
				<th class="col-1">위치</th>
				<th class="col-1">링크</th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach items="${list}" var="dto">
				<tr id="infobox${dto.idnum }" class="row mx-0 infobox${dto.idnum } infomain" data-count=1 style="cursor: pointer;">
					<td id="name" class="name col-4">${dto.cname}</td>
					<td id="date" class="date col-2">${dto.rdate}</td>
					<td id="end_date" class="end_date col-2">${dto.endDate}</td>
					<td id="now${dto.idnum }" class="now col-2">${dto.rCurrent}</td>

					<td id="location" class="location col-1">${dto.rLocation}</td>
					
					<td class="link col-1">
						<a href="${dto.rLink}" target="_blink">
							<c:choose>
								<c:when test="${dto.rLink.contains('saramin') }">
									<i class="fa-solid fa-s"></i>
								</c:when>
								
								<c:when test="${dto.rLink.contains('jobkorea') }">
									<i class="fa-solid fa-k"></i>
								</c:when>
								
								<c:when test="${dto.rLink.contains('programmers') }">
									<i class="fa-solid fa-p"></i>
								</c:when>
								
								<c:when test="${dto.rLink.contains('wanted') }">
									<i class="fa-solid fa-w"></i>
								</c:when>
								
								<c:when test="${dto.rLink.contains('jumpit') }">
									<i class="fa-solid fa-j"></i>
								</c:when>
							</c:choose>
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
					
					<c:if test="${dto.review != ''}">
						<td class="col-11 ml-5" style="border-top: none;">
							<textarea class="form-control" rows="10" readonly>${dto.review}</textarea>
						</td>
					</c:if>
					
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

let overCount1 = 0;
let overCount2 = 0;
let count = now.length;

$(document).ready(function() {
	let prev_key = $('#keyword').val();	
	
	$('span').text('총 ' + count + '건');
	
	$('#keyword').change(function() {
		
		var change_key = $('#keyword').val();
		
		$('form#search div#' + prev_key).addClass('d-none');
		$('form#search div#' + prev_key + ' input.target1').removeClass('target1');
		$('form#search div#' + prev_key + ' input.target2').removeClass('target2');
		
		
		$('form#search div#' + change_key + ' input').addClass('target1');
		
		if ( change_key == 'rdate' ) {
			$('form#search div#' + change_key + ' input[name=rdate2]').removeClass('target1');
			$('form#search div#' + change_key + ' input[name=rdate2]').addClass('target2');
			
		}
		
		$('form#search div#' + change_key).removeClass('d-none');
		
		prev_key = change_key;
	})
	
	
	$('form#search').submit(function(e) {
		e.preventDefault();
		
		let key = $('select#keyword').val();
		let value1 = $('input.target1').val();
		let value2 = $('input.target2').val();
		
		
		
		let check = true;
		let msg ='';
		
		if ( key == 'rdate' && value1 != null && value2 == '' ) {
			$('input.target2').val(value1);
			value2 = value1;
		}
		
		if ( value2 != null && value1 > value2 ) {
			msg = '시작일자가 종료일자보다 빠를 수 없습니다.';
			$('input[name=rdate2]').focus();
			check = false;
		} 
		
		if ( value1 == '' || value1 == null ) {
			msg = '검색할 값을 입력해주세요.';
			$('input.target1').focus();
			check = false;
		}
		
		if ( check != false ) {
			
			$.ajax({
				url : 'search',
				type : 'post',
				data : { 
						key : key,
						val1 : value1,
						val2 : value2
				},
				success : function(data) {
					$('tr[id^=infobox]').remove();
					$('tr.infosub').remove();

					now = [];
					
					$('button#go_back').removeClass('d-none');
					$('.btn-default').removeClass('btn-info');
					$('.btn-default').removeClass('btn-dark');
					$('button#show_all').text('검색결과 전체보기');
					$('button#show_all').addClass('btn-dark');
					$('span').text('총 ' + data.length + '건');
					
					makeBox(data);
					
					count = now.length;
					
				},
				error : function(data) {
					console.log(data);
				}
			})
		
		}
		
		else {
			alert(msg);
			return false;
		}
		
	});
	
	$('.btn-default').click(function() {
		
		var id = $(this).attr('id');
		var txt = $(this).text();
		
		$('tr.infosub').addClass('d-none');
		
		if ( id == 'toggle_over1' || id == 'toggle_over2' ) {
			
			motionToggle(id);
			
		} 
		
		else if ( id == 'show_all' ) {
			
			count = now.length;
			$('tr.infomain').removeClass('d-none');
			$('span').text('총 ' + count + '건');
			
			$('button[id^=toggle_over]').removeClass('d-none');
			$('.btn-default').removeClass('btn-info');
			$('.btn-default').removeClass('btn-dark');
			$(this).addClass('btn-dark');
			
			if ( overCount1%2 != 0 ) {
				overCount1++;
			}
			
			if ( overCount2%2 != 0 ) {
				overCount2++;
			}
			
		}
		
		else if ( id == 'go_back' ) {
			
			location.href = '/recruit';
			
		}
		
		else if ( id == 'show_never' ) {
			
			$('.btn-default').removeClass('btn-info');
			$('.btn-default').removeClass('btn-dark');
			$(this).addClass('btn-dark');
			
			
			var show_count = 0;
			
			for ( var i = 0; i < now.length; i++ ) {
				
				var obj = now[i];

				if ( obj.desc.indexOf('열람') >= 0) {
					
					$("tr#infobox"+obj.id).addClass('d-none');
					
				} 
				
				else {
					
					$("tr#infobox"+obj.id).removeClass('d-none');
					show_count++;
				}
				
			}
			
			count = show_count;
			
			$('span').text('총 ' + show_count + '건');
			$('button[id^=toggle_over]').addClass('d-none');
			
		}
		
		else {
			
			$('button[id^=toggle_over]').addClass('d-none');
			$('.btn-default').removeClass('btn-info');
			$('.btn-default').removeClass('btn-dark');
			$(this).addClass('btn-dark');
			
			showWhat(txt, now);
			
		}
		
	});
	
});


$(document).on('click', 'tr.infomain', function() {

	var id = $(this).attr('id');
	var count = $(this).attr('data-count');
	
	if ( count%2 != 0 ) {
		$('tr.infomain').attr('data-count', 1);		
		$('tr.infomain').removeClass('bg-light');
		$(this).addClass('bg-light');			
		
		$(this).attr('data-count', 2);
		$('tr.infosub').addClass('d-none');
		$('tr.infosub.' + id).removeClass('d-none');
		
	} else {
		$('tr.infomain').attr('data-count', 1);
		$('tr.infomain').removeClass('bg-light');
		$('tr.infosub.' + id).addClass('d-none');
		
	}
	
})



function showWhat(txt, arr) {
	
	var show_count = 0;
	
	for ( var i = 0; i < arr.length; i++ ) {
		
		var obj = arr[i];

		if ( obj.now == txt ) {
			
			$("tr#infobox"+obj.id).removeClass('d-none');
			show_count++;
		} 
		
		else {
			
			$("tr#infobox"+obj.id).addClass('d-none');
			
		}
		
	}
	
	count = show_count;
	
	$('span').text('총 ' + show_count + '건');
	
}

function motionToggle(id) {
	
	var count_over = 0;
	var toggle_count = 0;
	var keyword = '';
	
	if ( id == 'toggle_over1' ) {
		var toggle_count = overCount1;
		keyword = '불합격';
	} 
	
	else {
		var toggle_count = overCount2;
		var today = new Date();
		var month = (today.getMonth()+1);
		var date = today.getDate();
		
		if ( month < 10 ) {
			month = '0' + month;
		}
		
		if ( date < 10 ) {
			date = '0' + date;
		}
		
		keyword = today.getFullYear() + '-' + month + '-' + date;
		
	}
	
	toggle_count++;
	
	if ( toggle_count%2 != 0 ) {
		$('button#' + id).addClass('btn-info');
	} 
	
	else {
		$('button#' + id).removeClass('btn-info');
	}
	
	for ( var i = 0; i < now.length; i++ ) {
		
		var obj = now[i];
		
		if ( id == 'toggle_over1' ) {
		
			if ( obj.now == keyword && toggle_count%2 != 0 ) {
				
				$("tr#infobox"+obj.id).addClass('d-none');
				count_over++;
				
			} 
			
			else if ( obj.now == keyword && toggle_count%2 == 0 ){
				
				$("tr#infobox"+obj.id).removeClass('d-none');
				count_over--;
				
			}
		
		}
		
		else {
			
			if ( obj.endDate < keyword && toggle_count%2 != 0 ) {
				
				$("tr#infobox"+obj.id).addClass('d-none');
				count_over++;
				
			} 
			
			else if ( obj.endDate < keyword && toggle_count%2 == 0 ){
				
				$("tr#infobox"+obj.id).removeClass('d-none');
				count_over--;
				
			}
			
		}
		
	}
	
	count -= count_over;
	$('span').text('총 ' + count + '건');
	
	if ( id == 'toggle_over1' ) {
		overCount1 = toggle_count;
	}

	else {
		overCount2 = toggle_count;
	}
}


function makeBox(data) {
	
	for ( var i = 0; i < data.length; i++ ) {
		
		if ( data[i] != '' ) {
			
			var obj = {
					id : data[i].idnum,
					now : data[i].rCurrent,
					endDate : data[i].endDate,
					rDate : data[i].rDate,
					desc : data[i].rDesc
			};
			
			now.push(obj);
			
			
			let box = '<tr id="infobox' + data[i].idnum +'" class="row mx-0 infobox' + data[i].idnum +' infomain" data-count=1 style="cursor: pointer;">';
			box += '<td id="name" class="name col-4">' + data[i].cname +'</td>';
			box += '<td id="date" class="date col-2">' + data[i].rdate +'</td>';
			box += '<td id="end_date" class="end_date col-2">' + data[i].endDate +'</td>';
			box += '<td id="now' + data[i].idnum +'" class="now col-2">' + data[i].rCurrent +'</td>';
			box += '<td id="location" class="location col-1">' + data[i].rLocation +'</td>';
			box += '<td class="link col-1">';
			box += '<a href="' + data[i].rLink +'" target="_blink">';
			box += '<i class="fa-solid fa-arrow-up-right-from-square"></i>';
			box += '</a>';
			box += '</td>';
			box += '</tr>';
			box += '<tr class="row mx-0 infobox' + data[i].idnum + ' infosub d-none bg-light py-2">';
			box += '<td class="col-2 border-bottom font-italic ml-5 mr-2 mb-2"><b>포지션</b></td>';
			box += '<td class="col-7 border-bottom font-italic mr-2 mb-2"><b>진행상황</b></td>';
			box += '<td class="col-2 border-bottom font-italic mb-2"><b>예상연봉</b></td>';
			box += '<td class="col-2 border rounded ml-5 mr-2" style="border-top: none;">' + data[i].rPosition +'</td>';
			box += '<td class="col-7 border rounded mr-2 text-left" style="border-top: none;">' + data[i].rDesc +'</td>';
			box += '<td class="col-2 border rounded" style="border-top: none;">' + data[i].pay +'만원</td>';
			
			if ( data[i].review != '' ) {
				box += '<td class="col-11 ml-5" style="border-top: none;">';
				box += '<textarea class="form-control" rows="10" readonly>' + data[i].review +'</textarea>';
				box += '</td>';
			}
			
			box += '<td class="col-12 row mx-0 justify-content-center" style="border-top: none;">';
			box += '<a href="mod?idnum=' + data[i].idnum + '" class="col-5 btn btn-sm btn-primary border-white">수정</a>';
			box += '<a href="del?idnum=' + data[i].idnum + '" class="col-5 btn btn-sm btn-danger border-white">삭제</a>';
			box += '</td>';
			box += '</tr>';
			
			$('#table>tbody').append(box);
		}
		
		else {
			console.log('null');
		}
	
	}
}

</script>
</body>
</html>
