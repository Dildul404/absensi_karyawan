<?php
require __DIR__ . '/../config/koneksi.php';
$pekerjaStmt = $koneksi->prepare('SELECT id_pekerja, nama FROM pekerja ORDER BY nama');
$pekerjaStmt->execute();
$pekerjaList = $pekerjaStmt->fetchAll(PDO::FETCH_ASSOC);
?>

<div id="modal-absen" class="fixed inset-0 z-50 hidden grid place-items-center bg-black/40 p-4">
  <div class="w-full max-w-lg rounded-3xl bg-white p-6 shadow-2xl">
    <div class="flex items-center justify-between pb-3">
      <div>
        <h2 class="text-xl font-semibold text-gray-900">Tambah Absen</h2>
        <p class="text-sm text-gray-500">Isi data absen dan kirim ke CRUD.</p>
      </div>
      <button id="closeFormAbsen" type="button" class="rounded-full bg-gray-100 p-2 text-gray-500 hover:bg-gray-200">✕</button>
    </div>

    <form id="form-absen" class="space-y-4">
      <div>
        <label for="id_pekerja_absen" class="block text-sm font-medium text-gray-700">Pekerja</label>
        <select id="id_pekerja_absen" name="id_pekerja" required class="mt-1 w-full rounded-2xl border border-gray-200 bg-white px-3 py-2 focus:border-lime-400 focus:outline-none focus:ring-2 focus:ring-lime-200">
          <option value="" disabled selected>Pilih pekerja</option>
          <?php foreach ($pekerjaList as $pekerja): ?>
            <option value="<?= htmlspecialchars($pekerja['id_pekerja']) ?>"><?= htmlspecialchars($pekerja['nama']) ?></option>
          <?php endforeach ?>
        </select>
      </div>

      <div>
        <label for="absen_status" class="block text-sm font-medium text-gray-700">Status Absen</label>
        <select id="absen_status" name="absen" required class="mt-1 w-full rounded-2xl border border-gray-200 bg-white px-3 py-2 focus:border-lime-400 focus:outline-none focus:ring-2 focus:ring-lime-200">
          <option value="" disabled selected>Pilih status</option>
          <option value="hadir">Hadir</option>
          <option value="izin">Izin</option>
          <option value="sakit">Sakit</option>
          <option value="alpha">Alpha</option>
        </select>
      </div>

      <div>
        <label for="tanggal_absen" class="block text-sm font-medium text-gray-700">Tanggal</label>
        <input id="tanggal_absen" name="tanggal" type="datetime-local" required class="mt-1 w-full rounded-2xl border border-gray-200 bg-gray-50 px-3 py-2 focus:border-lime-400 focus:outline-none focus:ring-2 focus:ring-lime-200" />
      </div>

      <div class="flex items-center justify-end gap-2 pt-2">
        <button id="cancelFormAbsen" type="button" class="rounded-2xl border border-gray-200 px-4 py-2 text-sm text-gray-700 hover:bg-gray-100">Batal</button>
        <button type="submit" class="rounded-2xl bg-lime-600 px-4 py-2 text-sm font-semibold text-white hover:bg-lime-700">Simpan</button>
      </div>
    </form>
  </div>
</div>

<script>
  const openFormAbsen = document.getElementById('openFormAbsen');
  const modalAbsen = document.getElementById('modal-absen');
  const closeFormAbsen = document.getElementById('closeFormAbsen');
  const cancelFormAbsen = document.getElementById('cancelFormAbsen');
  const formAbsen = document.getElementById('form-absen');
  const selectPekerjaAbsen = document.getElementById('id_pekerja_absen');

  const openModalAbsen = () => {
    if (!modalAbsen) return;
    modalAbsen.classList.remove('hidden');
    modalAbsen.classList.add('grid');
  };

  const closeModalAbsen = () => {
    if (!modalAbsen) return;
    modalAbsen.classList.add('hidden');
    modalAbsen.classList.remove('grid');
  };

  const urlParams = new URLSearchParams(window.location.search);
  const selectedWorkerId = urlParams.get('worker_id');

  if (selectedWorkerId && selectPekerjaAbsen) {
    const option = [...selectPekerjaAbsen.options].find(item => item.value === selectedWorkerId);
    if (option) {
      selectPekerjaAbsen.value = selectedWorkerId;
    }
    openModalAbsen();

    if (window.history.replaceState) {
      window.history.replaceState({}, document.title, window.location.pathname);
    }
  }

  if (openFormAbsen) {
    openFormAbsen.addEventListener('click', openModalAbsen);
  }

  if (closeFormAbsen) {
    closeFormAbsen.addEventListener('click', closeModalAbsen);
  }

  if (cancelFormAbsen) {
    cancelFormAbsen.addEventListener('click', closeModalAbsen);
  }

  if (formAbsen) {
    formAbsen.addEventListener('submit', async event => {
      event.preventDefault();
      const formData = new FormData(formAbsen);
      const response = await fetch('crud/create_absen.php', {
        method: 'POST',
        body: formData,
      });
      const result = await response.json();
      alert(result.message || 'Form dikirim');
      if (result.status) {
        closeModalAbsen();
        formAbsen.reset();
        window.location.reload();
      }
    });
  }
</script>
