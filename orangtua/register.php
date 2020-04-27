<?php

require_once "..\\config\\koneksi.php";

session_start();

if (isset($_SESSION['orang_tua'])) {
    echo "UDAH LOGIN NGAPAIN KE SINI HEI";
}

if (isset($_POST['register'])) {
    $nis = $_POST['nis'];

    $findNIS = mysqli_query($con, "SELECT * FROM peserta_didik where nis='{$nis}'");
    if (mysqli_num_rows($findNIS) === 1) {
        $nama = $_POST['nama'];
        $username = $_POST['username'];
        $passwordString = $_POST['password'];
        $password = password_hash($passwordString, PASSWORD_DEFAULT);

        $result = mysqli_query($con, "INSERT INTO orang_tua (nis, nama, username, password) VALUES ('{$nis}', '{$nama}', '{$username}', '{$password}')");
        if ($result) {
            echo "BERHASIL, REDIRECT SENDIRI SANA";
            $_SESSION['orang_tua'] = $username;
            $_SESSION['nis'] = $nis;
        } else {
            echo "GAGAL AWOKAWOKAOKWOWAKO: " . mysqli_error($con);
        }
    } else {
        echo "GA ADA NIS KEK GITU, MAAP";
    }
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Orang Tua</title>

    <link rel="stylesheet" href="../assets/bootstrap.min.css">
</head>

<body class="bg-secondary">
    <main>
        <section class="container-fluid py-4">
            <div class="container">
                <div class="row justify-content-center">

                    <div class="col-sm-6">
                        <div class="card">
                            <div class="card-header">
                                <h5 class="text-center">Register</h5>
                            </div>
                            <div class="card-body">
                                <form method="POST">

                                    <div class="form-group row">
                                        <label class="col-sm-4 col-form-label" for="nis">NIS Anak</label>
                                        <div class="col-sm-8">
                                            <input class="form-control" type="number" name="nis" id="nis" placeholder="NIS Anak..">
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-sm-4 col-form-label" for="nama">Nama</label>
                                        <div class="col-sm-8">
                                            <input class="form-control" type="text" name="nama" id="nama" placeholder="Nama...">
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-sm-4 col-form-label" for="username">Username</label>
                                        <div class="col-sm-8">
                                            <input class="form-control" type="text" name="username" id="username" placeholder="Username..">
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-sm-4 col-form-label" for="password">Password</label>
                                        <div class="col-sm-8">
                                            <input class="form-control" type="password" name="password" id="password" placeholder="Password...">
                                        </div>
                                    </div>

                                    <div class="text-center">
                                        <a class="btn btn-outline-secondary" href="../orangtua">Kembali</a>
                                        <button class="btn btn-outline-primary" type="submit" name="register">Register</button>
                                    </div>

                                </form>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>
    </main>
</body>

</html>