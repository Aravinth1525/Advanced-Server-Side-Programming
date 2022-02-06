<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
  
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
<title>Insert title here</title>
</head>
<body>
<%
String name=request.getParameter("uname");
String password=request.getParameter("pass");

if(name.equals("admin") && password.equals("12345"))
{
	
	
	response.sendRedirect("second.jsp");
	
}
else

	out.print("Error");
	
	
%>

<div class="login">
  <div class="form">
  
    <form action="index.html">
    
      <span class="material-icons">lock</span>
      <h2 style="text-align:center">Invalid Credential !</h2>
      <button>Go back to login page</button>
    </form>  
  </div>
</div>

</body>
</html>