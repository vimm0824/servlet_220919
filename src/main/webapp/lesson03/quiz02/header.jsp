<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<a href="/lesson03/quiz02/template.jsp"><h1 class="text-success">Melong</h1></a>
<form method="get" action="/lesson03/quiz02/content.jsp"
	class="form-group mt-3">
	<div class="m-4 d-flex search w-50">
		<input type="text" name="title">
		<button type="submit" class="ml-1 btn btn-success">검색</button>
	</div>
</form>