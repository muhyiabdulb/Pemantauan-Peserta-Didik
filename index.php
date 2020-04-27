<?php
	session_start();
	require 'config/koneksi.php';

	if (isset($_POST['login'])) { 
			$pass = md5($_POST['password']);
			$sql = mysqli_query($con, "SELECT * FROM peserta_didik WHERE username = '$_POST[username]' && password = '$pass'");
			$cek = mysqli_num_rows($sql);
			$f = mysqli_fetch_array($sql);
			$_SESSION['nis'] = $f['nis'];
			$_SESSION['nama'] = $f['nama'];
		if($cek > 0){
			echo "<script>alert('Selamat Datang ".$_SESSION['nama']."');document.location.href='hal_peserta_didik.php?menu=home';</script>";
		}else{
			echo "<script>alert('Gagal Login');document.location.href='index.php';</script>";
		}
	}
?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <title>Halaman Login</title>

	<link rel="stylesheet" href="assets/bootstrap.min.css">

</head>
<body class="bg-primary">
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
								<a href="/register.php">Belum punya akun?</a>
							</div>
						</div>
					</div>

				</div>
			</div>
		</section>
	</main>
</body>
</html>