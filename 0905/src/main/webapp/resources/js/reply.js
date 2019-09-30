/**
 * reply.js파일
 */

console.log("Reply Module.....")

var replyService =(function(){
	function add(replytext, callback, error){
		console.log("add().....");
		
		/*$.ajax({
			type : 'post',
			url : '/replies/new',
			data : JSON.stringify(replytext),
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr){
				if(callback){
					callback(result);
				}
			},
			error : function(xhr, status, er){
				if(error){
					error(er);
				}
			}			
		})*/
	}
	
	function getList(param, callback, error){
		var bno=param.bno;
		var page=param.page || 1;
		
		$.getJSON("/replies/pages/"+bno+"/"+page+".json", 
				function(data){
					if(callback){
						callback(data);
					}
				}).fail(function(xhr, status, err){
					if(error){
						error();
				}
		});
	}
	
		function remove(rno, callback, error){
			$.ajax({
				type : "delete",
				url : "/replies/"+rno,
				success : function(deleteResult, stauts, xhr){
					if(callback){
						callback(deleteResult);
					}
				},
				eorror : function(xhr, status, er){
					if(error){
						error(er);
					}
				}
			});
		}
		
		function update(replytext, callback, error){
			console.log("댓글번호 : " + replytext.rno);
			$.ajax({
				type : "put",
				url : "/replies/"+replytext.rno,
				data : JSON.stringify(replytext),
				contentType : "application/json; charset=utf-8",
				success : function(deleteResult, stauts, xhr){
					if(callback){
						callback(deleteResult);
					}
				},
				error : function(xhr, status, er){
					if(error){
						error(er);
					}
				}
			});
		}
		
		function get(rno, callback, error){
			$.get("/replies/"+rno+".json", function(result){
				if(callback){
					callback(result);
				}
			}).fail(function(xhr, status, err){
				if(error){
					error(err);
				}
			});
		}
		
		//시간처리 //달력의 기원 : 율리우스력 -> 그레고리력 (윤달)  
		function displayTime(timeValue){
			var today=new Date();
			var gap=today.getTime()-timeValue;
			var dateObj=new Date(timeValue);
			var str="";
			//1000 1초  //1년 1000x60x60x24x365..
			if(gap < (1000*60*60*24)){
				var hh=dateObj.getHours();
				var mi=dateObj.getMinutes();
				var ss=dateObj.getSeconds();
				
				
				return [(hh > 9 ? '' : '0') + hh, ':', (mi > 9 ? '' : '0') + mi, ':', (ss > 9 ? '' : '0' ) + ss].join('');
			}else{
				var yy=dateObj.getFullYear();
				var mm=dateObj.getMonth() + 1;
				var dd=dateObj.getDate();
				var hh=dateObj.getHours();
				var mi=dateObj.getMinutes();
				var ss=dateObj.getSeconds();
				
				return [yy, '/', (mm > 9 ? '' : '0') + mm, '/', (dd > 9 ? '' : '0') + dd, ' ', (hh > 9 ? '' : '0') + hh, ':', (mi > 9 ? '' : '0') + mi, ':', (ss > 9 ? '' : '0' ) + ss].join('');
	
			}
		}
	
	return {add:add,
			getList:getList,
			remove : remove,
			update : update,
			get : get,
			displayTime : displayTime
	};
})(); 










