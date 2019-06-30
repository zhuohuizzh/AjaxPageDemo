<%@page import="com.hui.entity.Login"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
</head>
<body onload="initPage()">
	<table border="1px" id="tableLogin">
		
	</table>
	<p><a href="#" onclick="prePage()">上一页  |</a>
	<a href="#" onclick="nextPage()">下一页  |</a>
	第 <strong id="cur"></strong> 页  |
	共<strong id="max"></strong>页</p>
	<img alt="日常" src="img/richang.gif">
</body>
<script type="text/javascript">
	var pageCount;
	var curPage;
	var pageSize;
	var loginPage;
	var $th = $("<tr><th>ID</th><th>用户名</th><th>姓名</th><th>性别</th><th>出生日期</th></tr>");
	
	function initPage(){
		$.ajax({
			url:"GetLoginPageServlet?page="+1+"&pageSize="+10,
			type:"get",
			success:function(result){
				receiveData(result);
				updatePage();
			},
			error:function(textStatus){
				alert(textStatus);
			}
		});
	}
	
	function prePage(){
		if(curPage>1){
			curPage -= 1;
			$.ajax({
				url:"GetLoginPageServlet?page="+curPage,
				type:"get",
				success:function(result){
					receiveData(result);
					updatePage();
				},
				error:function(textStatus){
					alert(textStatus);
				}
			});
		}
	}
	
	function nextPage(){
		if(curPage<pageCount){
			curPage = curPage+1;
			$.ajax({
				url:"GetLoginPageServlet?page="+curPage,
				type:"get",
				success:function(result){
					receiveData(result);
					updatePage();
				},
				error:function(textStatus){
					alert(textStatus);
				}
			});
		}
	}
	
	function receiveData(result){
		var r = $.parseJSON(result);
		pageCount = eval(r.pageCount);
		pageSize = eval(r.pageSize);
		curPage = eval(r.curPage);
		loginPage = eval(r.loginPage);
		
	}
	
	function updatePage(){
		var $tableLogin = $("#tableLogin");
		$tableLogin.html("");
		$tableLogin.append($th);
		$.each(loginPage,function(i,e){
			var $row = $("<tr></tr>");
			$row.append($("<td>"+e.u_id+"</td>"));
			$row.append($("<td>"+e.username+"</td>"));
			$row.append($("<td>"+e.name+"</td>"));
			$row.append($("<td>"+e.gender+"</td>"));
			$row.append($("<td>"+e.birth+"</td>"));
			$tableLogin.append($row);
		});
		$("#cur").html(curPage);
		$("#max").html(pageCount);
	}
	
</script>
</html>