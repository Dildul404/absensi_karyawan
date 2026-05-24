<?php

require __DIR__ . "/../crud/read_lembur.php";

?>

<div class="overflow-x-auto rounded-2xl border border-gray-200 bg-white shadow-sm">

  <table class="min-w-full text-xs sm:text-sm">

    <!-- HEAD -->
    <thead class="bg-lime-50 text-lime-900">
      <tr>

        <th class="px-2 py-2 text-left font-semibold sm:px-3 sm:py-2.5 md:px-4 md:py-3 lg:px-6 lg:py-3.5">
          No
        </th>

        <th class="px-2 py-2 text-left font-semibold sm:px-3 sm:py-2.5 md:px-4 md:py-3 lg:px-6 lg:py-3.5">
          Nama
        </th>

        <th class="px-2 py-2 text-left font-semibold sm:px-3 sm:py-2.5 md:px-4 md:py-3 lg:px-6 lg:py-3.5">
          Durasi Lembur
        </th>

        <th class="px-2 py-2 text-left font-semibold sm:px-3 sm:py-2.5 md:px-4 md:py-3 lg:px-6 lg:py-3.5">
          Tanggal Lembur
        </th>


      </tr>
    </thead>

    <!-- BODY -->
    <tbody class="divide-y divide-gray-100">

      <?php foreach ($result as $index => $item) : ?>

      <tr class="transition hover:bg-lime-50">

        <!-- NO -->
        <td class="px-2 py-2 sm:px-3 sm:py-2.5 md:px-4 md:py-3 lg:px-6 lg:py-3.5">

          <div class="font-medium text-gray-800">
            <?php echo $index + 1 ?>
          </div>

        </td>

        <!-- NAMA -->
        <td class="px-2 py-2 text-gray-700 sm:px-3 sm:py-2.5 md:px-4 md:py-3 lg:px-6 lg:py-3.5">

          <?php echo $item["nama"] ?>

        </td>

        <!-- DURASI LEMBUR -->
        <td class="px-2 py-2 text-gray-700 sm:px-3 sm:py-2.5 md:px-4 md:py-3 lg:px-6 lg:py-3.5">

          <span class="inline-block rounded-full bg-orange-100 px-2 py-0.5 text-xs font-medium text-orange-700">

            <?php echo $item["durasi_lembur"] ?> Jam

          </span>

        </td>

        <!-- TANGGAL LEMBUR -->
        <td class="px-2 py-2 text-gray-700 sm:px-3 sm:py-2.5 md:px-4 md:py-3 lg:px-6 lg:py-3.5">

          <?php echo $item["tanggal_lembur"] ?>

        </td>

        <!-- AKSI -->
        <td class="px-2 py-2 text-right sm:px-3 sm:py-2.5 md:px-4 md:py-3 lg:px-6 lg:py-3.5">

          <div class="flex justify-end">


          </div>

        </td>

      </tr>

      <?php endforeach; ?>

    </tbody>

  </table>

</div>