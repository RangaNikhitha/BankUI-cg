<%@page import="com.bankui.beans.Help"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
						<li class="breadcrumb-item active" aria-current="page">Help</li>
					</ol>
				</nav>
				</div>
			</div>
			
			<div class="col-lg-1"></div>
		</div>
		
		<div class="row">
			<div class="col-lg-1"></div>
			<div class="col-lg-10">
			<% Help help = (Help)request.getAttribute("help"); %> 
			<div class="accordion" id="accordionExample">
  <div class="accordion-item">
  
    <h2 class="accordion-header" id="headingOne">
    
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
      Where can in edit my address?
      </button>
    </h2>
    <div id="collapseOne" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample" style="">
      <div class="accordion-body">
        <strong>If you created a new account after or while ordering you can edit both addresses (for billing and shipping) in your customer account.<code>.accordion-body</code>, though the transition does limit overflow.</strong>
      </div>
    </div>
  </div>
   <div class="accordion-item">
  
    <h2 class="accordion-header" id="headingOne">
    
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
      How can I generate a pin?
      </button>
    </h2>
    <div id="collapseOne" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample" style="">
      <div class="accordion-body">
        <strong>you can generate your pin through your registered mobile</strong>
      </div>
    </div>
  </div>
  
  
</div>


			
			</div>
			<div class="col-lg-1"></div>
		</div>
			
			</div>
</body>
</html>