<!DOCTYPE html>
<html lang="id">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Absensi Karyawan</title>
  <link rel="stylesheet" href="/karyawan/public/css/style.css">
  <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
  <style type="text/tailwindcss">
    @theme {
        --color-clifford: #da373d;
      }
    </style>
  <link href="https://cdn.jsdelivr.net/npm/daisyui@5" rel="stylesheet" type="text/css" />
  <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4" defer></script>
</head>

<body>
  <fieldset class="fieldset bg-base-200 border-base-300 rounded-box w-xs border p-4">
    <legend class="fieldset-legend">Login</legend>

    <form action="crud/login.php" method="POST">
      <label class="label">Email</label>
      <input type="email" class="input" name="email" required placeholder="Email" />

      <label class="label">Password</label>
      <input type="password" class="input" name="password" required placeholder="Password" />

      <input type="submit" value="Login" name="submit" class="btn btn-neutral mt-4 w-full">
      <!-- <button type="submit" class="btn btn-neutral mt-4">Login</button> -->
    </form>
  </fieldset>
</body>

</html>