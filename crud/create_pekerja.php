<?php

header("Content-Type: application/json");

require "../config/koneksi.php";

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    $nama = $_POST['nama'];
    $jabatan = $_POST['jabatan'];

    try {

        $query = $koneksi->prepare("
            INSERT INTO pekerja (nama, jabatan)
            VALUES (:nama, :jabatan)
        ");

        $query->bindParam(':nama', $nama);
        $query->bindParam(':jabatan', $jabatan);

        $query->execute();

        echo json_encode([
            "status" => true,
            "message" => "Data pekerja berhasil ditambahkan"
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