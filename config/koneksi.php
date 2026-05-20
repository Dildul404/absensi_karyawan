<?php
$local = "localhost";
$user = "root";
$password = "";
$database = "jam_kerja";
$charset = "utf8mb4";

$dsn = "mysql:host=$local;dbname=$database;charset=$charset";

try {
    $koneksi = new PDO($dsn, $user, $password);
    $koneksi->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo "Koneksi gagal: " . $e->getMessage();
}


?>
