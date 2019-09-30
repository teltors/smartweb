<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
                    <h1 class="page-header">Board Read</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Board Read Page
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">   
                                        	
                        	<div class="form-group">
                       			<label>Bno</label><input class="form-control" name="bno" value='<c:out value="${board.bno}"/>' readonly="readonly"/>
                          	</div>
                          	
                       		<div class="form-group">
                       			<label>Title</label><input class="form-control" name="title" value='<c:out value="${board.title}"/>' readonly="readonly"/>
                       		</div>
                       		
                       		<div class="form-group">
                       			<label>Text area</label>
                       			<textarea class="form-control" rows="3" cols="20" name="content" readonly="readonly" ><c:out value="${board.content}"/></textarea>
                       		</div>
                       		
                       		<div class="form-group">
                       			<label>Writer</label><input class="form-control" name="writer" value='<c:out value="${board.writer}"/>' readonly="readonly"/>
                       		</div>
                       		
                       		<button data-oper="modify" class="btn btn-default" OnClick="location.href='/board/modify?bno=<c:out value="${board.bno}"/>'">Modify</button>
                       		<button data-oper="List" class="btn btn-info" OnClick="window.location='list'">List</button> 
                        	
                        <form id="operForm" action="/board/modify" method="get">
                        	<input type="hidden" id="bno" name="bno" value="<c:out value='${board.bno }'/>">
                        	<input type="hidden" name="pageNum" value="<c:out value='${cri.pageNum }'/>"/>
                        	<input type="hidden" name="amount" value="<c:out value='${cri.amount }'/>"/>
                        	<input type="hidden" name="keyword" value="<c:out value='${cri.keyword }'/>"/>
                        	<input type="hidden" name="type" value="<c:out value='${cri.type }'/>"/>
                        </form>				
                        	   
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            
            <!-- reply row -->
            <div class="row">
            	<div class="col-lg-12">
            		<!-- panel -->
            		<div class="panel panel-default">
            			<div class="panel-heading">
            				<i class="fa fa-comments fa-fw"></i>Reply
            			</div>
            			<!-- ./panel-heading -->
            			<!-- panel-body -->
            			<div class="panel-body">
            				<ul class="chat">
            					<!-- start replytext -->
            					<li class="left clearfix" data-rno="12">
            						<div>
            							<div class="header">
            								<strong class="primary-font">user00</strong>
            								<small class="pull-right text-muted">2019-09-25</small>
            							</div>
            							<p>Good job!!</p>
            						</div>
            					</li>
            				</ul>
            			</div>
            		</div>
            		<!-- /panel -->
            	</div>
            </div>
            <!-- /reply row -->
            
           <script type="text/javascript" src="/resources/js/reply.js"></script>
           <script type="text/javascript">
      	 console.log("==============");
 		 console.log("JS TEST");
 		 
 		var bnoValue = '<c:out value="${board.bno}"/>';
 		 
 		/* replyService.add(
 			    
 			{replytext:"JS Test", replyer:"tester", bno:bnoValue}
 			,
 			function(result){ 
 			  alert("RESULT: " + result);
 			}
 		); */
 		
 			replyService.getList({bno:bnoValue, page:1}, function(list){
 				for(var i=0, len=list.length||0; i<len; i++){
 					console.log("전체목록 : "+list[i]);
 				}
 			});
 		
 		/* replyService.remove(19, function(count){
 			console.log("갯수확인 : "+count);
 			if(count=="success"){
 				alert("REMOVED");
 			} 		
 		}, function(err){
 			alert("ERROR");
 		
 		}); */
 		
 		/* replyService.update({rno : 16, bno : bnoValue, replytext : "수정합니다."}, function(result){
 			alert("수정완료");
 		});
 		
 		replyService.get(12, function(data){
 			console.log(data);
 		}) */
           </script>
           
           <script type="text/javascript">
           		$(document).ready(function(){
           			var operForm=$("#operForm");
           			
           			$("button[data-oper='modify']").on("click", function(e){
           				operForm.attr("action", "/board/modify").submit();
           			});
           			
           			$("button[data-oper='list']").on("click", function(e){
           				operForm.find("#bno").remove();
           				operForm.attr("action", "/board/list").submit();
           			});
           			
           			console.log(replyService);
           			
           			
           		});
           </script>
           
           <script>
           
           $(document).ready(function(){
        	   var bnoValue = '<c:out value="${board.bno}"/>';
        	   var replyUL=$(".chat");
        	   
        	   showList(1);
        	   
        	   function showList(page){
        		   replyService.getList({bno:bnoValue, page:page||1}, function(list){
        				
        			   var str="";
        			   if(list==null || list.length==0){
        				   replyUL.html("");
        				   return;
        			   }
        			   
        			
        			   
        			   for(var i=0, len=list.length||0; i<len; i++){
        				   str+="<li class='left clearfix' data-rno='"+list[i].rno+"'>";
        				   str+="<div><div class='header'><strong class='parimary-font'>"+list[i].replyer+"</strong>";
        				   str+=" <small class='pull-right text-muted'>"+replyService.displayTime(list[i].regdate)+"</small></div>";
        				   str+=" <p>"+list[i].replytext+"</p></div></li>";
        					console.log("전체목록 : "+list[i]);
        				}
        			   replyUL.html(str);
        			});
        	   }
           });
           
           </script>
   
   		  <%@include file="../includes/footer.jsp" %>

</body>
</html>


