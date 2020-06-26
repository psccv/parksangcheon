<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../include/header.jsp"%>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<div class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1 class="m-0 text-dark">Starter Page</h1>
				</div>
				<!-- /.col -->
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item active">Starter Page</li>
					</ol>
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container-fluid -->
	</div>
	<!-- /.content-header -->

	<!-- Main content -->
	<div class="content">
		<div class="card card-warning">
			<div class="card-header">
				<h3 class="card-title">
					<strong>게시판</strong>
				</h3>
			</div>
			<!-- /.card-header -->
			<div class="card-body">
				<form role="form">

					<!-- text input -->
					<div class="form-group">
						<label>제목</label> <input type="text" value="하이루"
							class="form-control" disabled="">
					</div>

					<!-- textarea -->
					<div class="form-group">
						<label>내용</label>
						<textarea class="form-control" rows="3" style="height: 200px"
							disabled="">안녕하세요</textarea>
					</div>

					<div class="form-group">
						<label>작성자</label> <input type="text" value="둘리아빠"
							class="form-control" disabled="">

					</div>

				</form>
				<button type="button" class="btn btn-default"
					onclick="location.href='#' "
					style="position: relative; background-color: #FFD228">
					<strong>수정</strong>
				</button>
				<button type="button" class="btn btn-default"
					onclick="location.href='#' "
					style="position: relative; background-color: #EB3232">
					<strong>삭제</strong>
				</button>
				<button type="button" class="btn btn-default"
					onclick="location.href='#' "
					style="position: relative; background-color: #0A6ECD">
					<strong>돌아가기</strong>
				</button>
			</div>
			<!-- /.card-body -->
		</div>
		<!-- /.card -->
	</div>
	<!-- /.replay -->
	<div class="content">
		<div class="card card-warning">
			<div class="card-header" style="background-color: #94EB3E">
				<h3 class="card-title">
					<strong>댓글작성</strong>
				</h3>
			</div>
			<!-- /.card-header -->
			<div class="card-body">
				<form role="form">
					<div class="form-group">
						<label>작성자</label> <input type="text" class="form-control"
							placeholder="작성자 ...">
					</div>

					<!-- textarea -->
					<div class="form-group">
						<label>내용</label>
						<textarea class="form-control" rows="3" placeholder="내용 ..."></textarea>
					</div>
					<div class="form-group">
						<button type="button" class="btn btn-default"
							onclick="location.href='#replayview' "
							style="position: relative; background-color: #50B4F5">
							<strong>작성</strong>
						</button>
					</div>
				</form>

				<div id="replayview" class="form-group">
					<button type="text" class="btn btn-default"
						style="position: relative; background-color: #FC3F00; width: 114px">
						<strong>댓글목록</strong>
					</button>

					<div class="card-body table-responsive p-0"
						style="text-align: center">
						<table class="table table-hover text-nowrap">
							<thead>
								<tr>
									<th>아이디</th>
									<th>내용</th>
									<th>등록일</th>
									<th>등급</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>user183</td>
									<td>John Doe</td>
									<td>11-7-2014</td>
									<td>정회원</td>
								</tr>
								<tr>
									<td>user219</td>
									<td>Alexander Pierce</td>
									<td>11-7-2014</td>
									<td>준회원</td>
								</tr>
								<tr>
									<td>user657</td>
									<td>Bob Doe</td>
									<td>11-7-2014</td>
									<td>우수회원</td>
								</tr>
								<tr>
									<td>user175</td>
									<td>Mike Doe</td>
									<td>11-7-2014</td>
									<td>준회원</td>
								</tr>
							</tbody>
						</table>
					</div>
					<ul class="pagination" style="position: relative; left: 40%;">
						<li class="page-item"><a href="#" class="page-link">«</a></li>
						<li class="page-item"><a href="#" class="page-link">1</a></li>
						<li class="page-item"><a href="#" class="page-link">2</a></li>
						<li class="page-item"><a href="#" class="page-link">3</a></li>
						<li class="page-item"><a href="#" class="page-link">»</a></li>
					</ul>
				</div>
			</div>
			<!-- /.card-body -->
		</div>
		<!-- /.card -->
	</div>
	<!--/.replay -->
</div>
<!-- /.content-wrapper -->

<%@ include file="../include/footer.jsp"%>



