<?php

require __DIR__ . '/../config/koneksi.php';

try {

    $stmt = $koneksi->prepare("
        SELECT 
            cuti.id_cuti,
            pekerja.nama,
            cuti.awal_cuti,
            cuti.akhir_cuti
        FROM cuti
        JOIN pekerja
        ON cuti.id_pekerja = pekerja.id_pekerja
    ");

    $stmt->execute();

    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);

} catch(PDOException $e) {

    die("Error: " . $e->getMessage());

}