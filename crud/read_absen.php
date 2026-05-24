<?php

require __DIR__ . '/../config/koneksi.php';

try {

    $stmt = $koneksi->prepare("
        SELECT 
            absen.id_absen,
            pekerja.nama,
            absen.absen,
            absen.tanggal
        FROM absen
        JOIN pekerja
        ON absen.id_pekerja = pekerja.id_pekerja
    ");

    $stmt->execute();

    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);

} catch(PDOException $e) {

    die("Error: " . $e->getMessage());

}