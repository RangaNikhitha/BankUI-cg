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
						<li class="breadcrumb-item active" aria-current="page">Account Statement</li>
					</ol>
				</nav>
				</div>
			</div>
			<div class="col-lg-1"></div>
		</div>
		
		<div class="row">
			<div class="col-lg-1"></div>
			<div class="col-lg-10">
			 
			 
			 <div class="card border-primary mb-3">
  <div class="card-header">Account Statement</div>
  <div style="font-size:medium;  color: red" > <%=request.getAttribute("msg") %></div>
  <form method="get" action="${pageContext.request.contextPath }/process-statement"> 
  <div class="card-body">
    <h5 class="card-title">Select FROM date from the calendar</h5>
    <p class="card-text">
    You can transfer to the account that belongs only to our bank</p>
    
    <div class="form-group">
   <input class="form-control" type="date" placeholder="select from date" 
   name="startDate" />
</div>

	<hr />
	
	 <h5 class="card-title">Select END date from the calendar</h5>
    <p class="card-text">
    Maximum limit for transfer is 20000</p>
    
    <div class="form-group">
   <input class="form-control" type="date" placeholder="select to date" 
   name="endDate" />
</div>
	
	<br /><br />
	<input type="submit" class="btn btn-primary btn-lg" value="Generate Statement" />
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="reset" class="btn btn-primary btn-lg" value="reset" />
  </div>
  
  </form>
</div>
			</div>
			<div class="col-lg-1"></div>
		</div>
	</div>
</body>
</html>