<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Scripting Tag</title>
</head>
<body>
<h2>Scripting Tag</h2>
<%! int count=3;

	String makeItLower(String data){
		return data.toLowerCase();
	}
%>

<%
	for(int i=1; i<=count; i++){
		out.println("Java Server Pages " + i + ".<br/>");
		}
%>
<%=
makeItLower("HELLO WORLD")
%>
</body>
</html>