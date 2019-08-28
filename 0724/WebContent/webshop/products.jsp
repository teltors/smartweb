<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, webshop.dto.Product" %>
<%@ page import="webshop.dao.ProductRepository" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel = "stylesheet" href="../resources/css/bootstrap.min.css">
<title>상품 목록</title>
</head>
<body>
	<jsp:include page="header.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				상품목록
			</h1>			
		</div>
	</div>

	<div class ="container">
		<div class ="row" align="center">
		<%@ include file="dbconn.jsp" %>
		<%
			PreparedStatement pstmt =null;
			ResultSet rs = null;
			String sql = "select * from product";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()){
		%>
		<div class="col-md-4">
		<img src="../upload/<%=rs.getString("p_fileName") %>" style="width:100%; height: 250px">
			<h3><%=rs.getString("p_name") %></h3>
			<p><%=rs.getString("p_description") %>
			<p><%=rs.getString("p_unitPrice") %>
			<p><a href="./product.jsp?id=<%=rs.getString("p_id") %>" class="btn btn-secondary">상세 정보 &raquo;</a>
		</div>
		<%
			}
		if(rs != null)
			rs.close();
		if(pstmt != null)
			pstmt.close();
		if(conn != null)
			conn.close();
		%>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp"/>
	
</body>
</html>