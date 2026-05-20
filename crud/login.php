<?php
require '../config/koneksi.php';

// get method
if (isset($_POST['submit'])) {
    $email = $_POST['email'];
    $password = $_POST['password'];
    $query = "SELECT * FROM user WHERE email = '$email' AND password = '$password'";
    $stmt = $koneksi->prepare($query);
    $stmt->execute();
    $result = $stmt->fetchAll();
    if ($result) {
        header("Location: home.php");
    } else {
        echo "Login gagal";
    }
}

?>