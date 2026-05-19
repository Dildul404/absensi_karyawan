<?

require_once __DIR__ . "config/koneksi.php";

// request POST
if ($_REQUEST["METHOD"] == "POST") {
}

// request GET
if ($_REQUEST == "GET") {
    $stmt = $conn->prepare("SELECT * FROM pekerja");

    $stmt->execute();
    header("Location: index.php");
}
