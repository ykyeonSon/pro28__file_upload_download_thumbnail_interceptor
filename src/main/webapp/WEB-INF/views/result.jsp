<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


<h1>���ε尡 �Ϸ�Ǿ����ϴ�.</h1>
	<label>���̵�:</label>
	 <input type="text" name="id" value="${map.id }" readonly><br>
	<label>�̸�:</label>
	 <input type="text" name="name" value="${map.name }" readonly><br>
	<div class="result-images">
	  <c:forEach var="imageFileName" items="${ map.fileList}"  >
	         <img src="${pageContext.request.contextPath }/download?imageFileName=${imageFileName }" style="width:150px">
	         <%-- <img src="${pageContext.request.contextPath }/download?imageFileName=${imageFileName }"> --%>
	         <br><br><br>
	  </c:forEach>         
	</div><p> 
	
	<a href='${pageContext.request.contextPath }/form'> �ٽ� ���ε��ϱ� </a> </p>
</body>
</html>