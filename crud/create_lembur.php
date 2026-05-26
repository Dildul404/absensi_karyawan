<?php

header("Content-Type: application/json");

require "../config/koneksi.php";

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $durasi_lembur = $_POST['durasi_lembur'];
    $tanggal_lembur = $_POST['tanggal_lembur'];
    $id_pekerja = $_POST['id_pekerja'];

    try {
        $query = $koneksi->prepare(
            "INSERT INTO lembur (durasi_lembur, tanggal_lembur, id_pekerja)
            VALUES (:durasi_lembur, :tanggal_lembur, :id_pekerja)"
        );

        $query->bindParam(':durasi_lembur', $durasi_lembur);
        $query->bindParam(':tanggal_lembur', $tanggal_lembur);
        $query->bindParam(':id_pekerja', $id_pekerja);

        $query->execute();

        echo json_encode([
            'status' => true,
            'message' => 'Data lembur berhasil ditambahkan',
        ]);
    } catch (PDOException $e) {
        echo json_encode([
            'status' => false,
            'message' => $e->getMessage(),
        ]);
    }
} else {
    echo json_encode([
        'status' => false,
        'message' => 'Method tidak diizinkan',
    ]);
}
