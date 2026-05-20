<!DOCTYPE html>
<html lang="en" data-theme="light">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
    <title>Home</title>
</head>
<body>
    <div class="flex relative">
        <?php include __DIR__ . "/component/sidebar.php" ?>
        <div class="px-10 w-full relative h-screen overflow-y-auto pl-24">
            <?php include __DIR__ . "/component/hero.php" ?>
            <?php include __DIR__ . "/component/table.php" ?>
        </div>
    </div>
</body>
</html>