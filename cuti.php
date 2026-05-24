<!DOCTYPE html>
<html lang="en" data-theme="light">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
    <title>Cuti</title>
</head>
<body>
    <div class="flex relative">
        <?php include __DIR__ . "/component/sidebar.php" ?>
        <div class="px-10 w-full relative h-screen overflow-y-auto pl-24 py-10">
            <header>
                <h1 class="text-2xl font-bold py-4">Cuti</h1>
            </header>
            <!-- Hari ini -->
            <section>

            </section>
            <?php include __DIR__ . "/component/tabel-cuti.php" ?>
        </div>
    </div>

    <!-- nav -->
    <script>
        const link = document.getElementById("cuti_link_nav")
        link.setAttribute("class", "group relative flex justify-center rounded-lg bg-lime-100 px-2 py-1.5 text-lime-700")
    </script>
</body>
</html>