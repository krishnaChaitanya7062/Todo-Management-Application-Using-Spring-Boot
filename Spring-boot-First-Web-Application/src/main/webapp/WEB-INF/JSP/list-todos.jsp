<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<title>Todo's for ${name}</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Todo Management Application</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/list-todos">Todos</a>
      </li>
      	<li>
			<a class="nav-link" href="/logout">Logout</a>
		</li>
      
      
    </ul>
  </div>
</nav>
<div class="container">
    <h4>Your Todo's</h4>
<table class="table table-striped">
	<thead>
		<tr>
			<th>Description</th>
			<th>Target Date</th>
     		<th>Is It Done ?</th>
     		<th>Delete</th>
     		<th></th>
			<th></th>
		</tr>
	</thead>
	<tbody>
	   <c:forEach items="${todos}" var="todo">
	     <tr>
	        <td>${todo.desc}</td>
	        <td><fmt:formatDate value="${todo.targetDate}" pattern="dd/MM/yyyy"/></td>
	        
	        <td>${todo.done}</td>
	        <td><a type="button" class="btn btn-success" href="/update-todo?id=${todo.id}">Update</a></td>
	        <td><a class="button btn btn-warning" href="/delete-todo?id=${todo.id}">Delete</a></td>
	    </tr>
	   </c:forEach>
	</tbody>
</table>
<div>
<a class="button " href="/add-todo" >Add a todo</a>
</div>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
</div>
</body>
</html>