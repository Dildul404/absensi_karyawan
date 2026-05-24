<?php 
require __DIR__ . '/../config/koneksi.php';

$stmt = $koneksi->prepare("SELECT * 
    FROM pekerja
    JOIN jabatan 
    ON pekerja.id_jabatan = jabatan.id_jabatan");
$stmt->execute();

$result = $stmt->fetchAll(PDO::FETCH_ASSOC);