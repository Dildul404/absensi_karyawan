<?php
require __DIR__ . '/../config/koneksi.php';
$pekerjaStmt = $koneksi->prepare('SELECT id_pekerja, nama FROM pekerja ORDER BY nama');
$pekerjaStmt->execute();
$pekerjaList = $pekerjaStmt->fetchAll(PDO::FETCH_ASSOC);
?>

<div id="modal-cuti" class="fixed inset-0 z-50 hidden grid place-items-center bg-black/40 p-4">
  <div class="w-full max-w-lg rounded-3xl bg-white p-6 shadow-2xl">
    <div class="flex items-center justify-between pb-3">
      <div>
        <h2 class="text-xl font-semibold text-gray-900">Tambah Cuti</h2>
        <p class="text-sm text-gray-500">Isi data cuti dan kirim ke CRUD.</p>
      </div>
      <button id="closeFormCuti" type="button" class="rounded-full bg-gray-100 p-2 text-gray-500 hover:bg-gray-200">✕</button>
    </div>

    <form id="form-cuti" class="space-y-4">
      <div>
        <label for="id_pekerja_cuti" class="block text-sm font-medium text-gray-700">Pekerja</label>
        <select id="id_pekerja_cuti" name="id_pekerja" required class="mt-1 w-full rounded-2xl border border-gray-200 bg-white px-3 py-2 focus:border-lime-400 focus:outline-none focus:ring-2 focus:ring-lime-200">
          <option value="" disabled selected>Pilih pekerja</option>
          <?php foreach ($pekerjaList as $pekerja): ?>
            <option value="<?= htmlspecialchars($pekerja['id_pekerja']) ?>"><?= htmlspecialchars($pekerja['nama']) ?></option>
          <?php endforeach ?>
        </select>
      </div>

      <div>
        <label for="awal_cuti" class="block text-sm font-medium text-gray-700">Awal Cuti</label>
        <input id="awal_cuti" name="awal_cuti" type="date" required class="mt-1 w-full rounded-2xl border border-gray-200 bg-gray-50 px-3 py-2 focus:border-lime-400 focus:outline-none focus:ring-2 focus:ring-lime-200" />
      </div>

      <div>
        <label for="akhir_cuti" class="block text-sm font-medium text-gray-700">Akhir Cuti</label>
        <input id="akhir_cuti" name="akhir_cuti" type="date" required class="mt-1 w-full rounded-2xl border border-gray-200 bg-gray-50 px-3 py-2 focus:border-lime-400 focus:outline-none focus:ring-2 focus:ring-lime-200" />
      </div>

      <div class="flex items-center justify-end gap-2 pt-2">
        <button id="cancelFormCuti" type="button" class="rounded-2xl border border-gray-200 px-4 py-2 text-sm text-gray-700 hover:bg-gray-100">Batal</button>
        <button type="submit" class="rounded-2xl bg-lime-600 px-4 py-2 text-sm font-semibold text-white hover:bg-lime-700">Simpan</button>
      </div>
    </form>
  </div>
</div>

<script>
  const openFormCuti = document.getElementById('openFormCuti');
  const modalCuti = document.getElementById('modal-cuti');
  const closeFormCuti = document.getElementById('closeFormCuti');
  const cancelFormCuti = document.getElementById('cancelFormCuti');
  const formCuti = document.getElementById('form-cuti');
  const selectPekerjaCuti = document.getElementById('id_pekerja_cuti');

  const openModalCuti = () => {
    if (!modalCuti) return;
    modalCuti.classList.remove('hidden');
    modalCuti.classList.add('grid');
  };

  const closeModalCuti = () => {
    if (!modalCuti) return;
    modalCuti.classList.add('hidden');
    modalCuti.classList.remove('grid');
  };

  const urlParamsCuti = new URLSearchParams(window.location.search);
  const selectedWorkerIdCuti = urlParamsCuti.get('worker_id');

  if (selectedWorkerIdCuti && selectPekerjaCuti) {
    const optionCuti = [...selectPekerjaCuti.options].find(item => item.value === selectedWorkerIdCuti);
    if (optionCuti) {
      selectPekerjaCuti.value = selectedWorkerIdCuti;
    }
    openModalCuti();

    if (window.history.replaceState) {
      window.history.replaceState({}, document.title, window.location.pathname);
    }
  }

  if (openFormCuti) {
    openFormCuti.addEventListener('click', openModalCuti);
  }
  if (closeFormCuti) {
    closeFormCuti.addEventListener('click', closeModalCuti);
  }
  if (cancelFormCuti) {
    cancelFormCuti.addEventListener('click', closeModalCuti);
  }
  if (formCuti) {
    formCuti.addEventListener('submit', async event => {
      event.preventDefault();
      const formData = new FormData(formCuti);
      const response = await fetch('crud/create_cuti.php', {
        method: 'POST',
        body: formData,
      });
      const result = await response.json();
      alert(result.message || 'Form dikirim');
      if (result.status) {
        closeModalCuti();
        formCuti.reset();
        window.location.reload();
      }
    });
  }
</script>
