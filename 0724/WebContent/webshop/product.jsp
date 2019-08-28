<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="webshop.dto.Product" %>
   	<%@ page import="webshop.dao.ProductRepository" %>
   	<%@ page errorPage="exceptionNoProductId.jsp" %>
   	<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel = "stylesheet" href="../resources/css/bootstrap.min.css">
<title>상품 상세 정보</title>
<script type="text/javascript">
	function addToCart(){
		if(confirm("상품을 장바구니에 추가하시겠습니까?")){
			document.addForm.submit();
		}else{
			document.addForm.reset();
		}
	}
</script>
</head>
<body>
	<jsp:include page="header.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3" align="center">
				상품 정보
			</h1>
			
		</div>
	</div>
	<%@ include file="dbconn.jsp" %>
		<%
		
		PreparedStatement pstmt =null;
		ResultSet rs = null;
		String sql = "select * from product" ;
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while (rs.next()){
			
		%>
	<div class ="container">
		<div class ="row">
		<div class="col-md-5">
			<img src="../upload/<%=rs.getString("p_fileName") %>" style="width: 100%"/>
		</div>
		<div class="col-md-6">
			<h3><%=rs.getString("p_name") %></h3>
			<p><%=rs.getString("p_description") %>
			<p> <b>상품 코드 : </b><span class="badge badge-danger"><%=rs.getString("p_id") %></span>
			<p> <b>제조사</b> : <%=rs.getString("p_manufacturer") %>
			<p> <b>분류</b> : <%=rs.getString("p_category") %>
			<p> <b>재고 수</b> : <%=rs.getString("p_unitsInStock") %>
			<h4><%=rs.getString("p_unitPrice") %>원</h4>
			<p> <form name="addForm" action="./addCart.jsp?id=<%=rs.getString("p_id") %>" method="post">
			<a href="#" class="btn btn-info" onclick="addToCart()">상품 주문 &raquo;</a>
			<a href="./cart.jsp" class="btn btn-warning">장바구니 &raquo;</a>
			<a href="./products.jsp" class="btn btn-secondary">상품 목록 &raquo;</a>
			</form>
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