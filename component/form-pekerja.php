<?php
require __DIR__ . '/../config/koneksi.php';
$jabatanStmt = $koneksi->prepare('SELECT * FROM jabatan ORDER BY id_jabatan');
$jabatanStmt->execute();
$jabatanList = $jabatanStmt->fetchAll(PDO::FETCH_ASSOC);
?>

<div id="modal-pekerja" class="fixed inset-0 z-50 hidden place-items-center bg-black/40 p-4">
  <div class="w-full max-w-lg rounded-3xl bg-white p-6 shadow-2xl">
    <div class="flex items-center justify-between pb-3">
      <div>
        <h2 class="text-xl font-semibold text-gray-900">Tambah Pekerja</h2>
        <p class="text-sm text-gray-500">Isi data pekerja dan kirim ke CRUD.</p>
      </div>
      <button id="closeFormPekerja" type="button" class="rounded-full bg-gray-100 p-2 text-gray-500 hover:bg-gray-200">✕</button>
    </div>

    <form id="form-pekerja" class="space-y-4">
      <div>
        <label for="nama_pekerja" class="block text-sm font-medium text-gray-700">Nama</label>
        <input id="nama_pekerja" name="nama" type="text" required class="mt-1 w-full rounded-2xl border border-gray-200 bg-gray-50 px-3 py-2 focus:border-lime-400 focus:outline-none focus:ring-2 focus:ring-lime-200" />
      </div>

      <div>
        <label for="id_jabatan_pekerja" class="block text-sm font-medium text-gray-700">Jabatan</label>
        <select id="id_jabatan_pekerja" name="id_jabatan" required class="mt-1 w-full rounded-2xl border border-gray-200 bg-white px-3 py-2 focus:border-lime-400 focus:outline-none focus:ring-2 focus:ring-lime-200">
          <option value="" disabled selected>Pilih jabatan</option>
          <?php foreach ($jabatanList as $jabatan): ?>
            <option value="<?= htmlspecialchars($jabatan['id_jabatan']) ?>"><?= htmlspecialchars($jabatan['jabatan']) ?></option>
          <?php endforeach ?>
        </select>
      </div>

      <div class="flex items-center justify-end gap-2 pt-2">
        <button id="cancelFormPekerja" type="button" class="rounded-2xl border border-gray-200 px-4 py-2 text-sm text-gray-700 hover:bg-gray-100">Batal</button>
        <button type="submit" class="rounded-2xl bg-lime-600 px-4 py-2 text-sm font-semibold text-white hover:bg-lime-700">Simpan</button>
      </div>
    </form>
  </div>
</div>

<script>
  const openFormPekerja = document.getElementById('openFormPekerja');
  const modalPekerja = document.getElementById('modal-pekerja');
  const closeFormPekerja = document.getElementById('closeFormPekerja');
  const cancelFormPekerja = document.getElementById('cancelFormPekerja');
  const formPekerja = document.getElementById('form-pekerja');

  // buka modal
  openFormPekerja?.addEventListener('click', () => {
    modalPekerja.classList.remove('hidden');
    modalPekerja.classList.add('grid');
  });

  // function tutup modal
  function closeModal() {
    modalPekerja.classList.add('hidden');
    modalPekerja.classList.remove('grid');
  }

  // tombol close
  closeFormPekerja?.addEventListener('click', closeModal);

  // tombol batal
  cancelFormPekerja?.addEventListener('click', closeModal);

  // klik area luar modal
  modalPekerja?.addEventListener('click', (e) => {
    if (e.target === modalPekerja) {
      closeModal();
    }
  });

  // submit form
  formPekerja?.addEventListener('submit', async (event) => {
    event.preventDefault();

    const submitBtn = formPekerja.querySelector('button[type="submit"]');

    try {
      submitBtn.disabled = true;
      submitBtn.textContent = 'Menyimpan...';

      const formData = new FormData(formPekerja);

      const response = await fetch('crud/create_pekerja.php', {
        method: 'POST',
        body: formData
      });

      // cek response server
      if (!response.ok) {
        throw new Error(`HTTP error ${response.status}`);
      }

      const result = await response.json();

      alert(result.message || 'Form berhasil dikirim');

      if (result.status) {
        closeModal();
        formPekerja.reset();

        // reload data
        window.location.reload();
      }

    } catch (error) {
      console.error(error);

      alert('Terjadi kesalahan saat mengirim data');
    } finally {
      submitBtn.disabled = false;
      submitBtn.textContent = 'Simpan';
    }
  });
</script>
