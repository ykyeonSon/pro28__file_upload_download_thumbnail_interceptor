<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
  request.setCharacterEncoding("UTF-8");
%>     
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���Ͼ��ε� �ϱ�</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
var cnt=1;
function fn_addFile(){
	$("#d_file").append("<br>"+"<input  type='file' name='file"+cnt+"' />");
	cnt++;
}


</script>
</head>
<body>
<h1>���� ���ε��ϱ�</h1>
<form method="post" action="${contextPath}/upload" enctype="multipart/form-data">
	<label>���̵�:</label>
    <input type="text" name="id"><br>
	<label>�̸�:</label>
    <input type="text" name="name"><br>
	<input type="button"  value="���� �߰�" onClick="fn_addFile()"/><br>
	<div id="d_file">
  </div>
	<input type="submit"  value="���ε�"/>
</form>
</body>
</html>