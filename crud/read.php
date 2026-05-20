<?php 
require '../config/koneksi.php';

// get method
$query = "SELECT * FROM pekerja";
$stmt = $koneksi->prepare($query);
$stmt->execute();
$result = $stmt->fetchAll();
?>