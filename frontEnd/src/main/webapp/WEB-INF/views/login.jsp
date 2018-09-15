<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<span style="color:red">${error }</span><br>
${msg }<br>
<h2>Login Page</h2><br><br>
<div>
<c:url value="/j_spring_security_check" var="url"></c:url>
<form method="post" action="${url }" class="form-horizontal">

<div class="form-group">					
	 <label class="col-lg-2" >Enter Email:</label>
 	<div class="col-sm-4">
 		<input type="text" name="j_username"  class="form-control" placeholder="Email (ex:gopi@abc.com)"><br>
	 </div>
 </div>
<div class="form-group">
	<label class="col-lg-2" >Enter password:</label>
	<div class="col-sm-4">
	 <input type="password" name="j_password" class="form-control" placeholder="Password" >
	 
    </div>
</div>

  &nbsp&nbsp&nbsp<button type="submit" class="btn btn-primary">Sign In</button>

</form>
</div>


</body>
</html>
