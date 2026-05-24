<?php

header("Content-Type: application/json");

require "../config/koneksi.php";

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    $awal_cuti = $_POST['awal_cuti'];
    $akhir_cuti = $_POST['akhir_cuti'];
    $id_pekerja = $_POST['id_pekerja'];

    try {

        $query = $koneksi->prepare("
            INSERT INTO cuti (awal_cuti, akhir_cuti, id_pekerja)
            VALUES (:awal_cuti, :akhir_cuti, :id_pekerja)
        ");

        $query->bindParam(':awal_cuti', $awal_cuti);
        $query->bindParam(':akhir_cuti', $akhir_cuti);
        $query->bindParam(':id_pekerja', $id_pekerja);

        $query->execute();

        echo json_encode([
            "status" => true,
            "message" => "Data cuti berhasil ditambahkan"
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