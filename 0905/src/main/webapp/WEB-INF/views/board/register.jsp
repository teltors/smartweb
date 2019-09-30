<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
      <%@include file="../includes/header.jsp" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

    
</head>
<body>
	
	<div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Board Register</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Board Register
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                        	<form role="form" action="/board/register" method="post">
                        		<div class="form-group">
                        			<label>Title</label><input class="form-control" name="title">
                        		</div>
                        		
                        		<div class="form-group">
                        			<label>Text area</label>
                        			<textarea class="form-control" rows="3" cols="20" name="content"></textarea>
                        		</div>
                        		
                        		<div class="form-group">
                        			<label>Writer</label><input class="form-control" name="writer"> 
                        		</div>
                        		
                        		<div>
                        			<button type="submit" class="btn btn-default">Submit</button>
                        			<button type="reset" class="btn btn-default">Reset</button>
                        		</div>
                        	</form>
                            
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
           
            <!-- /.row -->
       
     <%@include file="../includes/footer.jsp" %>    
 

</body>
</html>

