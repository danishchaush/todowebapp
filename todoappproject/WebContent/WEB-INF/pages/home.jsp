<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@  taglib prefix="form" uri="http://www.springframework.org/tags/form"  %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">

<title> <c:out value="${page }"></c:out> </title>
</head>
<body>
	<div class="container mt-3">

		<h1 class="text-center">Welcome to todo manager</h1>
		<div class="alert alert-sucess">
		<c:if test="${not empty msg }">
		<b>
		<c:out value="${msg}"></c:out>
		</b>
		</c:if>
		
		</div>
		<div class="row mt-5">
			<div class="col-md-2">
				
				<div class="list-group">
					<button type="button"
						class="list-group-item list-group-item-action active">
					Menu</button>
					<a href='<c:url value="/add"></c:url>'
						class="list-group-item list-group-item-action">
						Add todo</a>
					<a href='<c:url value="/home"></c:url>'
						class="list-group-item list-group-item-action">
						View todo</a>
					
				</div>
			</div>
			<div class="col-md-10">
				
				<c:if test="${page=='home' }">
				<h1 class="text-center">All todos</h1>
				
				<c:forEach items="${todos }" var="t">
				<div class="card">
				<div class="card-body">
				<h3> <c:out value="${t.todoTitle }"></c:out> </h3>
				<p> <c:out value="${t.todoContent }"></c:out>
				</p>
				</div>
				</div>
				</c:forEach>
				
				
				</c:if>
				<c:if test="${page=='add' }">
				<h1 class="text-center">Add todo</h1>
				<br>
				<form:form action="saveTodo" method="post" modelAttribute="todo">
					<div class="form-group">
					<form:input path="todoTitle" cssClass="form-control" placeholder="enter your todo values"/>
					</div>
					<div class="form-group">
					<form:textarea path="todoContent" cssClass="form-control" placeholder="enter your todo content"/>
					</div>
					<div class="container  text-center">
					<button class="btn btn-outline-success">Add Todo</button>
					</div>
				</form:form>
				</c:if>
			</div>
		</div>
	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
		integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
		integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
		crossorigin="anonymous"></script>
</body>
</html>