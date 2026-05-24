<?php

require __DIR__ . '/../config/koneksi.php';

try {

    $stmt = $koneksi->prepare("
        SELECT 
            lembur.id_lembur,
            pekerja.nama,
            lembur.durasi_lembur,
            lembur.tanggal_lembur
        FROM lembur
        JOIN pekerja
        ON lembur.id_pekerja = pekerja.id_pekerja
    ");

    $stmt->execute();

    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);

} catch(PDOException $e) {

    die("Error: " . $e->getMessage());

}