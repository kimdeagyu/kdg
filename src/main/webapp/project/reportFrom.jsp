<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사기조회</title>
<style type="text/css">
* {
	margin-top: 10px;
	a: text-decoration: none;
	color: black;
	text-decoration: none;
	text-align: center;
}

.report {
	list-style: none;
	text-decoration: none;
	margin-right: 35px;
	margin-bottom: -5px;
}

.question {
	list-style: none;
	text-decoration: none;
height: 
}

</style>


</head>
<body onresize=parent.resizeTo(500,400); 
onload=parent.resizeTo(500,400);>
	<h1>사기신고</h1>
	<table border="1" width="500px" styie="table-layout:fixed";>
		<tr>
			<select><option value="">내용</option>
				<option value="책상태">책상태</option>
				<option value="책금액">책금액</option>
				<input type="text" name="신고사유" value="신고사유">
			</select>
		</tr>
		<tr>
		<th>사유(구체적으로)</th>
		<td width=300px;heigth=500px;><textarea></textarea></td>	
		</tr>
		<tr>
			<th>첨부파일 등록</th>
			<td></td><br>
			<td><input type="submit" value="첨부"></td>
		</tr>
		
		</div>
	</table>
	<input type="submit" value="등록">
	<input type="reset" value="취소">
	<div class=Left>
</body>
</html>
