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
						<li class="breadcrumb-item active" aria-current="page">Account_Edit</li>
					</ol>
				</nav>
				</div>
			</div>
			<div class="col-lg-1"></div>
		</div>
		
		<div class="row">
			<div class="col-lg-1"></div>
			<div class="col-lg-10">
			 <sf:form method="post"
					action="${pageContext.request.contextPath}/create-account"
					modelAttribute="customer">
			 
			 <div class="card border-primary mb-3">
  <div class="card-header">Transfer</div>
  <div style="font-size:medium;  color: red" > <%=request.getAttribute("msg") %></div>

  <div class="card-body">
    <h5 class="card-title">Edit Your Account Info</h5>
   
  <div class="form-group">
  <fieldset disabled="">
    <label class="form-label" for="disabledInput">UserName</label>
    <input class="form-control"  value="username"id="disabledInput" type="text" placeholder=" " disabled=""/>
  </fieldset>
</div>

<div class="form-group has-success">
  <label class="form-label mt-4" for="inputValid">Password</label>
  <input type="text" value="correct value" class="form-control is-valid" id="inputValid">
  
</div>

<div class="form-group has-success">
  <label class="form-label mt-4" for="inputValid">Address</label>
  <input type="text" value="correct value" class="form-control is-valid" id="inputValid">
  
</div>

<div class="form-group has-success">
  <label class="form-label mt-4" for="inputValid">City</label>
  <input type="text" value="correct value" class="form-control is-valid" id="inputValid">
 </div>

<div class="form-group has-success">
  <label class="form-label mt-4" for="inputValid">State</label>
  <input type="text" value="correct value" class="form-control is-valid" id="inputValid">
  
</div>

<br/>
<br/>
<input type="submit" class="btn btn-primary btn-lg" value="Edit" />
</sf:form>
  
=
</div>
			</div>
			<div class="col-lg-1"></div>
		</div>
	</div>
</body>
</html>