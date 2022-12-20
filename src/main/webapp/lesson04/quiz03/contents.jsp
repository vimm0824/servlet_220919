<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
MysqlService ms = MysqlService.getInstance();
ms.connect();

String selectQuery = "select A.*, B.* from seller as A join used_goods as B on A.id = B.sellerId;";
ResultSet resultSet = ms.select(selectQuery);
%>

<%
while (resultSet.next()) {
	String imgUrl = resultSet.getString("B.picture");
	if (imgUrl == null) {
		imgUrl = "https://mblogthumb-phinf.pstatic.net/20161008_248/sasa9508_1475929220263OMzsO_JPEG/2.jpg?type=w2";
	}
%>
<article class="goods-box">
	<div class="m-4">
		<img alt="물건사진" src="<%=imgUrl%>">
		<div class="font-weight-bold top-box-text mt-2"><%=resultSet.getString("B.title")%></div>
		<div class="box-text"><%=resultSet.getInt("B.price")%></div>
		<div class="box-text"><%=resultSet.getString("A.nickname")%></div>
	</div>
</article>
<%
}
%>
<%
ms.disconnect();
%>