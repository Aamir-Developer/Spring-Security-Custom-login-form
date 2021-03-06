<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<head>
<title>Custom login Page</title>
</head>

<body>

	<h3>My custom login page</h3>

	<form:form
		action="${pageContext.request.contextPath }/authenticateTheUser"
		method="POST">
	
		<c:if test ="${param.error!=null }">
		
		<i>Sorry You have entered invalid user name/password </i>
		
		</c:if>
	
		<p>
			User name: <input type="text" name="username" />
		</p>

		<p>
			Password: <input type="password" name="password" />
		</p>

		<input type="submit" value="login" />

	</form:form>

</body>

</html>