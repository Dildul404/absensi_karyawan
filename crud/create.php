<?php
require '../config/koneksi.php';

// post method
if (isset($_POST['submit'])) {
    $nama = $_POST['nama'];
    $jabatan = $_POST['jabatan'];
    $query = "INSERT INTO pekerja (nama, jabatan) VALUES ('$nama', '$jabatan')";
    $stmt = $koneksi->prepare($query);
    $stmt->execute();
    header("Location: /karyawan/crud/read.php");
}
?>