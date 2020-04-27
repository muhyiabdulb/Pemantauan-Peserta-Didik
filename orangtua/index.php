<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Orang Tua</title>

    <link rel="stylesheet" href="../assets/bootstrap.min.css">
</head>

<body>
    <main>
        <section class="container-fluid py-4">
            <div class="container">
                <div class="row justify-content-center">

                    <div class="col-sm-6">
                        <div class="card">
                            <div class="card-header">
                                <h5 class="text-center">Login</h5>
                            </div>
                            <div class="card-body">
                                <form method="POST">

                                    <div class="form-group row">
                                        <label class="col-sm-4 col-form-label" for="username">Username</label>
                                        <div class="col-sm-8">
                                            <input class="form-control" type="text" name="username" id="username" placeholder="username">
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-sm-4 col-form-label" for="password">Password</label>
                                        <div class="col-sm-8">
                                            <input class="form-control" type="password" name="password" id="password" placeholder="username">
                                        </div>
                                    </div>

                                    <div class="text-center">
                                        <button class="btn btn-outline-primary" type="submit" name="login">Login</button>
                                    </div>

                                </form>
                            </div>
                            <div class="card-footer text-center">
                                <a href="register.php">Belum punya akun?</a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>
    </main>
</body>

</html>