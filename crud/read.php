<?php 
require __DIR__ . '/../config/koneksi.php';

$stmt = $koneksi->prepare("SELECT * FROM pekerja");
$stmt->execute();

$result = $stmt->fetchAll(PDO::FETCH_ASSOC);