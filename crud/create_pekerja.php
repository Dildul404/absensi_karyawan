<?php

header("Content-Type: application/json");

require "../config/koneksi.php";

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    $nama = $_POST['nama'];
    $id_jabatan = $_POST['id_jabatan'];

    try {

        $query = $koneksi->prepare("
            INSERT INTO pekerja (nama, id_jabatan)
            VALUES (:nama, :id_jabatan)
        ");

        $query->bindParam(':nama', $nama);
        $query->bindParam(':id_jabatan', $id_jabatan);

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