<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
MysqlService ms = MysqlService.getInstance();
ms.connect();

String selectQuery = "select * from seller;";
ResultSet resultSet = ms.select(selectQuery);
%>

<div class="mt-3">
	<h1>물건 올리기</h1>
	<form method="post" action="/lesson04/quiz03_update">
		<div>
			<div class="d-flex">
				<select class="form-control mr-1" name="sellerId" id="sellerId">
					<option value="null" selected>-아이디 선택-</option> 
					<%
					while (resultSet.next()) {
					%>
					<option value="<%=resultSet.getInt("id")%>"><%=resultSet.getString("nickname")%></option>
					<%
					}
					%>
				</select> 
				<input type="text" class="form-control col-6 mr-1" name="title" id="title" placeholder="제목"> 
				<input type="text" class="form-control col-3" name="price" id="price" placeholder="가격">
			</div>
			<textarea rows="7" cols="80" name="description" id="description" class="form-control mt-2"></textarea>
			<div class="input-group mb-3">
				<span class="input-group-text" id="basic-addon1">이미지url</span>
				 <input type="text" class="form-control" name="picture" id="picture">
			</div>
			<button type="submit" id="updateBtn" class="btn btn-secondary col-12">저장</button>
		</div>
	</form>
</div>
<%
ms.disconnect();
%>
<script>
	$(document).ready(function() {
		$('#updateBtn').on('click', function() {
			let sellerId = $('#sellerId').val();
			sellerId = sellerId.trim();
			if (sellerId == "null") {
				alert("닉네임을 선택해주세요!");
				return;
			}
			
			let title = $('#title').val();
			title = title.trim();
			if (title.length < 1) {
				alert("제목을 입력해주세요!");
				return;
			}
			
			let price = $('#price').val();
			price = price.trim();
			if (price.length < 1) {
				alert("가격을 입력해주세요!");
				return;
			}
		})
	})
</script>