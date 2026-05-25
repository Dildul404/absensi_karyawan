<!DOCTYPE html>
<html lang="en" data-theme="light">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
    <title>Lembur</title>
</head>
<body>
    <div class="flex relative">
        <?php include __DIR__ . "/component/sidebar.php" ?>
        <div class="px-10 w-full relative h-screen overflow-y-auto pl-24 py-10">
            <header>
                <h1 class="text-2xl font-bold py-4">Lembur</h1>
            </header>
            <section class="mb-6 flex justify-end">
                <button id="openFormLembur" type="button" class="rounded-2xl bg-lime-600 px-4 py-2 text-sm font-semibold text-white shadow-sm transition hover:bg-lime-700">
                    Tambah Lembur
                </button>
            </section>
            <?php include __DIR__ . "/component/tabel-lembur.php" ?>
        </div>
    </div>
    <?php include __DIR__ . "/component/form-lembur.php" ?>

    <!-- nav -->
    <script>
        const link = document.getElementById("lembur_link_nav")
        link.setAttribute("class", "group relative flex justify-center rounded-lg bg-lime-100 px-2 py-1.5 text-lime-700")
    </script>
</body>
</html>