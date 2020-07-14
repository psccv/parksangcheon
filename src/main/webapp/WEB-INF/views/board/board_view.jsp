<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ include file="../include/header.jsp"%>

<!-- container -->
<div id="container">
	<!-- location_area -->
	<div class="location_area customer">
		<div class="box_inner">
			<h2 class="tit_page">
				스프링 <span class="in">in</span> 자바
			</h2>
			<p class="location">
				고객센터 <span class="path">/</span> 공지사항
			</p>
			<ul class="page_menu clear">
				<li><a href="#" class="on">공지사항</a></li>
				<li><a href="#">문의하기</a></li>
			</ul>
		</div>
	</div>
	<!-- //location_area -->

	<!-- bodytext_area -->
	<div class="bodytext_area box_inner">
		<ul class="bbsview_list">
			<li class="bbs_title">${boardVO.title}</li>
			<li class="bbs_hit">작성일 : <span><fmt:formatDate
						pattern="yyyy-MM-dd HH:mm:ss" value="${boardVO.regdate}" /></span></li>
			<li class="bbs_date">조회수 : <span>${boardVO.view_count}</span></li>
			<li class="bbs_content">
				<div class="editer_content" >
					<textarea style="width:100%;padding-bottom:10px; min-height:200px;">${boardVO.content}</textarea>
				</div>
			</li>
			
			<c:if test="${boardVO.files[0] != null}">
				<li class="bbs_content">
					<div class="form-group">
							<label>첨부파일 다운로드</label><br>
							<a href="/download?fileName=${boardVO.files[0]}"><strong style="font-size:30px;">${boardVO.files[0]}</strong></a>
					</div>
					<br>
					<c:set var="extName" value="${fn:split(boardVO.files[0],'.')}" />
					<c:set var="ext" value="${extName[fn:length(extName)-1]}"/>
					<c:if test="${fn:containsIgnoreCase(extNameArray, ext)}">
						<img src="/download?fileName=${boardVO.files[0]}" title="첨부파일 이미지" style="width:100%;">
					</c:if>
				</li>
			</c:if>
		</ul>
		
		<p class="btn_line txt_right">
			<a href="/board/list?page=${pageVO.page}" class="btn_bbs">목록</a>
		</p>
	</div>
	<!-- //bodytext_area -->
</div>
<!-- //container -->

<%@ include file="../include/footer.jsp"%>