<?php

header("Content-Type: application/json");

require "../config/koneksi.php";

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    $absen = $_POST['absen'];
    $tanggal = $_POST['tanggal'];
    $id_pekerja = $_POST['id_pekerja'];

    try {

        $query = $koneksi->prepare("
            INSERT INTO absen (absen, tanggal, id_pekerja)
            VALUES (:absen, :tanggal, :id_pekerja)
        ");

        $query->bindParam(':absen', $absen);
        $query->bindParam(':tanggal', $tanggal);
        $query->bindParam(':id_pekerja', $id_pekerja);

        $query->execute();

        echo json_encode([
            "status" => true,
            "message" => "Data absen berhasil ditambahkan"
        ]);

    } catch(PDOException $e) {

        echo json_encode([
            "status" => false,
            "message" => $e->getMessage()
        ]);

    }

} else {

    echo json_encode([
        "status" => false,
        "message" => "Method tidak diizinkan"
    ]);

}