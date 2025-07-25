<!DOCTYPE html>
<html>
<head>
    <title>User Signup</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body class="bg-light">

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card shadow-lg">
                <div class="card-header bg-primary text-white text-center">
                    <h4>User Signup</h4>
                </div>
                <div class="card-body">
                    <form action="signup" method="post">
                        <div class="form-group">
                            <label for="firstName">First Name</label>
                            <input type="text" class="form-control" id="firstName" name="firstName" required>
                        </div>

                        <div class="form-group">
                            <label for="lastName">Last Name</label>
                            <input type="text" class="form-control" id="lastName" name="lastName" required>
                        </div>

                        <div class="form-group">
                            <label for="email">Email address</label>
                            <input type="email" class="form-control" id="email" name="email" required>
                        </div>

                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" class="form-control" id="password" name="password" required>
                        </div>

                        <div class="form-group">
                            <label for="role">Role</label>
                            <select class="form-control" id="role" name="role" required>
                                <option value="">-- Select Role --</option>
                                <option value="USER">User</option>
                                <option value="FACULTY">Faculty</option>
                             </select>
                        </div>

                       

                        <button type="submit" class="btn btn-primary btn-block">Sign Up</button>
                    </form>
                </div>
                <div class="card-footer text-muted text-center">
                    Already have an account? <a href="login">Login</a>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
