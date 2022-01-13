<%@page import="com.bankui.beans.Account"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 
</head>
<c:import url="../header.jsp" />
<body>
	<div class="container-fluid" style="margin-top: 3em">
		<div class="row">
			<div class="col-lg-1"></div>
			<div class="col-lg-10">
			<div class="alert alert-dismissible alert-warning" style="height: 55px">
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="${pageContext.request.contextPath }/dashboard" style="text-decoration: none;">Dashboard</a></li>
						<li class="breadcrumb-item active" aria-current="page">Balance</li>
					</ol>
				</nav>
				</div>
			</div>
			<div class="col-lg-1"></div>
		</div>
		
		<div class="row">
			<div class="col-lg-1"></div>
			<div class="col-lg-10">
			 <div style="font-size:medium;  color: red" > <%=request.getAttribute("msg") %></div>
  <form method="get" action="${pageContext.request.contextPath }/showbalance"> 
  
			
			
			<% Account account = (Account)request.getAttribute("account"); %> 
			
			 <div class="card border-primary mb-3">
  <div class="card-header">Account Details</div>
   <h5>Your Account Number: </h5>
  
    <%=account.getAccountNumber() %>
    <h5>Total Amount: </h5>
    <%=account.getBalance()%>
   
 
</div>
</form>
			</div>
			<div class="col-lg-1"></div>
		</div>
	</div>
</body>
</html>