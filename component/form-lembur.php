<?php
require __DIR__ . '/../config/koneksi.php';
$pekerjaStmt = $koneksi->prepare('SELECT id_pekerja, nama FROM pekerja ORDER BY nama');
$pekerjaStmt->execute();
$pekerjaList = $pekerjaStmt->fetchAll(PDO::FETCH_ASSOC);
?>

<div id="modal-lembur" class="fixed inset-0 z-50 hidden grid place-items-center bg-black/40 p-4">
  <div class="w-full max-w-lg rounded-3xl bg-white p-6 shadow-2xl">
    <div class="flex items-center justify-between pb-3">
      <div>
        <h2 class="text-xl font-semibold text-gray-900">Tambah Lembur</h2>
        <p class="text-sm text-gray-500">Isi data lembur dan kirim ke CRUD.</p>
      </div>
      <button id="closeFormLembur" type="button" class="rounded-full bg-gray-100 p-2 text-gray-500 hover:bg-gray-200">✕</button>
    </div>

    <form id="form-lembur" class="space-y-4">
      <div>
        <label for="id_pekerja_lembur" class="block text-sm font-medium text-gray-700">Pekerja</label>
        <select id="id_pekerja_lembur" name="id_pekerja" required class="mt-1 w-full rounded-2xl border border-gray-200 bg-white px-3 py-2 focus:border-lime-400 focus:outline-none focus:ring-2 focus:ring-lime-200">
          <option value="" disabled selected>Pilih pekerja</option>
          <?php foreach ($pekerjaList as $pekerja): ?>
            <option value="<?= htmlspecialchars($pekerja['id_pekerja']) ?>"><?= htmlspecialchars($pekerja['nama']) ?></option>
          <?php endforeach ?>
        </select>
      </div>

      <div>
        <label for="durasi_lembur" class="block text-sm font-medium text-gray-700">Durasi Lembur</label>
        <input id="durasi_lembur" name="durasi_lembur" type="time" step="1" required class="mt-1 w-full rounded-2xl border border-gray-200 bg-gray-50 px-3 py-2 focus:border-lime-400 focus:outline-none focus:ring-2 focus:ring-lime-200" />
      </div>

      <div>
        <label for="tanggal_lembur" class="block text-sm font-medium text-gray-700">Tanggal</label>
        <input id="tanggal_lembur" name="tanggal_lembur" type="date" required class="mt-1 w-full rounded-2xl border border-gray-200 bg-gray-50 px-3 py-2 focus:border-lime-400 focus:outline-none focus:ring-2 focus:ring-lime-200" />
      </div>

      <div class="flex items-center justify-end gap-2 pt-2">
        <button id="cancelFormLembur" type="button" class="rounded-2xl border border-gray-200 px-4 py-2 text-sm text-gray-700 hover:bg-gray-100">Batal</button>
        <button type="submit" class="rounded-2xl bg-lime-600 px-4 py-2 text-sm font-semibold text-white hover:bg-lime-700">Simpan</button>
      </div>
    </form>
  </div>
</div>

<script>
  const openFormLembur = document.getElementById('openFormLembur');
  const modalLembur = document.getElementById('modal-lembur');
  const closeFormLembur = document.getElementById('closeFormLembur');
  const cancelFormLembur = document.getElementById('cancelFormLembur');
  const formLembur = document.getElementById('form-lembur');
  const selectPekerjaLembur = document.getElementById('id_pekerja_lembur');

  const openModalLembur = () => {
    if (!modalLembur) return;
    modalLembur.classList.remove('hidden');
    modalLembur.classList.add('grid');
  };

  const closeModalLembur = () => {
    if (!modalLembur) return;
    modalLembur.classList.add('hidden');
    modalLembur.classList.remove('grid');
  };

  const urlParamsLembur = new URLSearchParams(window.location.search);
  const selectedWorkerIdLembur = urlParamsLembur.get('worker_id');

  if (selectedWorkerIdLembur && selectPekerjaLembur) {
    const optionLembur = [...selectPekerjaLembur.options].find(item => item.value === selectedWorkerIdLembur);
    if (optionLembur) {
      selectPekerjaLembur.value = selectedWorkerIdLembur;
    }
    openModalLembur();

    if (window.history.replaceState) {
      window.history.replaceState({}, document.title, window.location.pathname);
    }
  }

  if (openFormLembur) {
    openFormLembur.addEventListener('click', openModalLembur);
  }

  if (closeFormLembur) {
    closeFormLembur.addEventListener('click', closeModalLembur);
  }

  if (cancelFormLembur) {
    cancelFormLembur.addEventListener('click', closeModalLembur);
  }

  if (formLembur) {
    formLembur.addEventListener('submit', async event => {
      event.preventDefault();
      const formData = new FormData(formLembur);
      const response = await fetch('crud/create_lembur.php', {
        method: 'POST',
        body: formData,
      });
      const result = await response.json();
      alert(result.message || 'Form dikirim');
      if (result.status) {
        closeModalLembur();
        formLembur.reset();
        window.location.reload();
      }
    });
  }
</script>
