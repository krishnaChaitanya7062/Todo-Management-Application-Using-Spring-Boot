<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>First Web Application</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker-standalone.min.css" integrity="sha256-SMGbWcp5wJOVXYlZJyAXqoVWaE/vgFA5xfrH3i/jVw0=" crossorigin="anonymous" />
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
        <a class="nav-link" href="/">Home </a>
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
<form:form method="post" modelAttribute="todo">
<form:hidden path="id"/>
<fieldset class="form-group">
<form:label path="desc">Description</form:label>
<form:input path="desc" type="text" required="required" class="form-control"/>
<form:errors path="desc" cssClass="text-warning"/>
</fieldset>
<fieldset class="form-group">
<form:label path="targetDate">Target Date</form:label>
<form:input path="targetDate" type="text" class="form-control"
					required="required" />
<form:errors path="targetDate" cssClass="text-warning" />
</fieldset>

 
	<button class="btn btn-success" type="submit">
	Add
	</button>

</form:form>
</div>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.15.1/moment.min.js"></script>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
</body>
</html>