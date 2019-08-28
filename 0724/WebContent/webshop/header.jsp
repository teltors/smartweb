<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Directives Tag</title>
</head>
<body>
	<div id="nav" class = "navbar navbar-expand navbar-dark bg-dark">
		<div class = "container">
			<div class = "navbar-brand">
				<a class = "navbar-brand" href="./welcom.jsp">Home</a>	
			</div>
			<div>
				<ul class="navbar-nav mr-auto">
					<li class="nav-item"><a class = "nav-link" href="./products.jsp">상품 목록</a></li>
					<li class="nav-item"><a class = "nav-link" href="./addProduct.jsp">상품 등록</a></li>
					<li class="nav-item"><a class = "nav-link" href="./editProduct.jsp?edit=update">상품 수정</a></li>
					<li class="nav-item"><a class = "nav-link" href="./editProduct.jsp?edit=delete">상품 삭제</a></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>