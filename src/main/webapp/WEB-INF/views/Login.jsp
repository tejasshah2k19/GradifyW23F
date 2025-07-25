<!DOCTYPE html>
<html>
<head>
<title>User Signup</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body class="bg-light">

	<div class="container mt-5">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="card shadow-lg">
					<div class="card-header bg-primary text-white text-center">
						<h4>User Login</h4>
					</div>
					<div class="card-body">
						<form action="login" method="post">

							<div class="form-group">
								<label for="email">Email address</label> <input type="email"
									class="form-control" id="email" name="email" required>
							</div>

							<div class="form-group">
								<label for="password">Password</label> <input type="password"
									class="form-control" id="password" name="password" required>
							</div>

							<button type="submit" class="btn btn-primary btn-block">Login</button>
						</form>
					</div>
					<div class="card-footer text-muted text-center">
						New User? <a href="signup">Signup</a>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
