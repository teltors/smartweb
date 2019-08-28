<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel = "stylesheet" href="../resources/css/bootstrap.min.css">
<title>배송 정보</title>
<script type="text/javascript">
	<!--한글 체크폼-->
	function CheckForm(){
		var form=document.loginForm;
		var name=form.name.value;
		var shippingDate=form.shippingDate.value;
		var country=form.country.value;
		var zipCode=form.zipCode.value;
		var addressName=form.addressName.value;
		
		
		if (name==""){
			alert("성명을 입력해주세요");
			form.name.focus();
			return false; 
		}else if(shippingDate==""){
			alert("배송일을 입력해주세요");
			form.shippingDate.focus();
			return false;
		}else if(country==""){
			alert("국가를 입력해주세요");
			form.country.focus();
			return false;
		}else if(zipCode==""){
			alert("우편번호를 입력해주세요");
			form.zipCode.focus();
			return false;
		}else if(addressName==""){
			alert("주소를 입력해주세요");
			form.addressName.focus();
			return false;
		}
		
		form.submit();
			
		}
		
	<!--영어 체크폼-->
	function CheckForm_en(){
		var form=document.loginForm;
		var name=form.name.value;
		var shippingDate=form.shippingDate.value;
		var country=form.country.value;
		var zipCode=form.zipCode.value;
		var addressName=form.addressName.value;
		
		
		if (name==""){
			alert("Please enter your name.");
			form.name.focus();
			return false; 
		}else if(shippingDate==""){
			alert("Please enter delivery date.");
			form.shippingDate.focus();
			return false;
		}else if(country==""){
			alert("Please enter your country.");
			form.country.focus();
			return false;
		}else if(zipCode==""){
			alert("Please enter a postal code.");
			form.zipCode.focus();
			return false;
		}else if(addressName==""){
			alert("Please enter an address.");
			form.addressName.focus();
			return false;
		}
		
		form.submit();
			
		}
	
	
</script>
</head>
<body>
	<fmt:setLocale value='<%=request.getParameter("language") %>'/>
	<fmt:bundle basename="webshop.dto.message">
	<jsp:include page="header.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3"><fmt:message key="shipping_Infomation"/></h1>
		</div>
	</div>
	<div class="container">
	<div class="text-right">
			<a href="?language=ko">Korean</a>|<a href="?language=en">English</a>
		</div>
		<form action="./processShippingInfo.jsp" class="form-horizontal" method="post" name="loginForm">
			<input type="hidden" name="cartId" value="<%=request.getParameter("cartId")%>"/>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="name"/></label>
				<div class="col-sm-3">
					<input name="name" type="text" class="form-control"/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="shippingDate"/></label>
				<div class="col-sm-3">
					<input name="shippingDate" type="text" class="form-control" />(yyyy/mm/dd)
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="country"/></label>
				<div class="col-sm-3">
					<input name="country" type="text" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="zipCode"/></label>
				<div class="col-sm-3">
					<input name="zipCode" type="text" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="addressName"/></label>
				<div class="col-sm-5">
					<input name="addressName" type="text" class="form-control"/>
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<a href="./cart.jsp?cartId=<%=request.getParameter("cartId") %>" class="btn btn-secondary" role="button"><fmt:message key="before"/></a>
					
					<input type="button" class="btn btn-primary" value="<fmt:message key="enroll"/>" onclick="<fmt:message key="CheckForm"/>"/>
					
					<a href="./checkOutCancelled.jsp" class="btn btn-secondary" role="button"><fmt:message key="cancel"/></a>
				</div>
			</div>
		</form>
	</div>
</fmt:bundle>
</body>
</html>









