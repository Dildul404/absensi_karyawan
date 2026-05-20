<?php

require '../config/koneksi.php';

if (isset($_POST['submit'])) {

    $email = $_POST['email'];
    $password = $_POST['password'];

    $query = "SELECT * FROM user WHERE email = ? AND password = ?";
    
    $stmt = $koneksi->prepare($query);
    $stmt->execute([$email, $password]);

    $result = $stmt->fetch();
    if ($result) {

        header("Location: ../home.php");
        exit();

    } else {


        echo "Login gagal";

    }
} else {
    header("Location: ../index.php");
}