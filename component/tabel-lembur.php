<?php

require __DIR__ . "/../crud/read.php";
?>

<div class="overflow-x-auto rounded-2xl border border-gray-200 bg-white shadow-sm">
  <table class="min-w-full text-xs sm:text-sm">

    <!-- Head -->
    <thead class="bg-lime-50 text-lime-900">
      <tr>
        <th class="px-2 py-2 text-left font-semibold sm:px-3 sm:py-2.5 md:px-4 md:py-3 lg:px-6 lg:py-3.5">
          No
        </th>

        <th class="hidden px-3 py-2.5 text-left font-semibold sm:table-cell md:px-4 md:py-3 lg:px-6 lg:py-3.5">
          Nama
        </th>

        <th class="px-2 py-2 text-left font-semibold sm:px-3 sm:py-2.5 md:px-4 md:py-3 lg:px-6 lg:py-3.5">
          Tanggal
        </th>

        <th class="px-2 py-2 text-left font-semibold sm:px-3 sm:py-2.5 md:px-4 md:py-3 lg:px-6 lg:py-3.5">
          Durasi
        </th>
      </tr>
    </thead>

    <!-- Body -->
    <tbody class="divide-y divide-gray-100">
    <?php foreach ($result as $index => $item) : ?>

      <!-- Row -->
      <tr class="transition hover:bg-lime-50">
        <td class="px-2 py-2 sm:px-3 sm:py-2.5 md:px-4 md:py-3 lg:px-6 lg:py-3.5">
          <div class="font-medium text-gray-800">
            <?php echo($index + 1 ) ?>
          </div>
        </td>

        <td class="px-3 py-2.5 text-gray-700 sm:table-cell md:px-4 md:py-3 lg:px-6 lg:py-3.5">
          <div class="hidden sm:block">
            <?php echo($item["nama"]) ?>
          </div>
          <div class="mt-0.5 text-xs text-gray-500 sm:hidden">
            <?php echo($item["nama"]) ?>
          </div>
        </td>

        <td class="px-2 py-2 text-gray-700 sm:px-3 sm:py-2.5 md:px-4 md:py-3 lg:px-6 lg:py-3.5">
          <span class="inline-block rounded-full bg-lime-100 px-2 py-0.5 text-xs font-medium text-lime-700">
            <?php echo($item["jabatan"]) ?>
          </span>
        </td>

        <td class="px-2 py-2 text-gray-700 sm:px-3 sm:py-2.5 md:px-4 md:py-3 lg:px-6 lg:py-3.5">
          <span class="inline-block rounded-full bg-lime-100 px-2 py-0.5 text-xs font-medium text-lime-700">
            <?php // echo($item["tanggal"]) ?>
          </span>
        </td>
      </tr>

     <?php endforeach; ?>

    </tbody>
  </table>
</div>