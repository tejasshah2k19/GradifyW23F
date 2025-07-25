<%@page import="org.apache.catalina.User"%>
<%@page import="com.entity.UserEntity"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="java.util.List"%>
<html>
<head>
<title>User List</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

	<div class="container mt-5">
		<h2 class="mb-4 text-center">User List</h2>

		<table class="table table-bordered table-striped">
			<thead class="thead-dark">
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Role</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<%
				List<UserEntity> userList = (List<UserEntity>) request.getAttribute("users");
				if (userList != null && !userList.isEmpty()) {
					for (UserEntity user : userList) {
				%>
				<tr>
					<td><%=user.getFirstName()%></td>
					<td><%=user.getLastName()%></td>
					<td><%=user.getEmail()%></td>
					<td><%=user.getRole()%></td>
					<td><a href="deleteuser?userId=<%=user.getUserId()%>">Delete</a></td>
				</tr>
				<%
				}
				} else {
				%>
				<tr>
					<td colspan="4" class="text-center">No users found.</td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
	</div>

</body>
</html>
