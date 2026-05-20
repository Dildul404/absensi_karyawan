<?php
require '../config/koneksi.php';

// post method
if (isset($_POST['submit'])) {
    $nama = $_POST['nama'];
    $jabatan = $_POST['jabatan'];
    $stmt = $koneksi->prepare("INSERT INTO pekerja (nama, jabatan) VALUES ( ? , ? )");
    $stmt->execute([$nama, $jabatan]);
}