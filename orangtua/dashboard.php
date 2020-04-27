<?php

require_once "..\\config\\koneksi.php";

session_start();

if (!isset($_SESSION['orang_tua'])) {
    echo "LOGIN DULU WOI";
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard - Orang Tua</title>

    <link rel="stylesheet" href="../assets/style.css">
</head>

<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#">Home</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form>
            </div>
        </nav>
    </header>

    <main>
        <section class="container-fluid bg-light-blue-100 py-4">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="card">
                            <div class="card-header">
                                Nih Kegiatan Anak Anda
                            </div>
                            <div class="card-body">
                                <table class="table table-dark table-hover">
                                    <thead>
                                        <tr>
                                            <th>Hari</th>
                                            <th>Tanggal</th>
                                            <th>Jam Mulai</th>
                                            <th>Jam Selesai</th>
                                            <th>Kegiatan</th>
                                            <th>Validasi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $findKegiatanAnak = mysqli_query($con, "SELECT hari, tanggal, jam_mulai, jam_akhir, aktivitas FROM pembuktian WHERE nis='$_SESSION[nis]'");
                                        while ($row = mysqli_fetch_assoc($findKegiatanAnak)) {
                                            ?>
                                            <tr>
                                                <td><?= $row['hari'] ?></td>
                                                <td><?= $row['tanggal'] ?></td>
                                                <td><?= $row['jam_mulai'] ?></td>
                                                <td><?= $row['jam_akhir'] ?></td>
                                                <td><?= $row['aktivitas'] ?></td>
                                                <td><a class="btn btn-primary" href="">Validasi</a></td>
                                            </tr>
                                            <?php
                                        }
                                        ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <script src="../assets/main.js" type="module"></script>

</body>

</html>