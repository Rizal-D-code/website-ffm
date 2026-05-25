<nav class="navbar navbar-expand-lg navbar-light bg-light shadow-sm fixed-top">
	<div class="container">
		<a class="navbar-brand" href="<?= base_url() ?>">
			<img style="max-width:100%; max-height:40px;" src="<?= base_url('img/identitas/logo_unhan.png') ?>">
		</a>
		<a>
		<div class="sambutan">
				<h2>Fakultas Farmasi Militer</h2>
		</div>
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item <?php if($title == 'Beranda') echo "active"; ?>">
				<a class="nav-link" href="<?= base_url() ?>">Beranda</a>
				</li>
				<li class="nav-item dropdown <?php if($title == 'Sejarah' || $title == 'Visi & Misi' || $title == 'Struktur' || $title == 'Fasilitas') echo "active"; ?>">
				<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					Profil
				</a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
					<a class="dropdown-item" href="<?= base_url('profil/sejarah') ?>">Sejarah</a>
					<a class="dropdown-item" href="<?= base_url('profil/visimisi') ?>">Visi & Misi</a>
					<a class="dropdown-item" href="<?= base_url('profil/struktur') ?>">Struktur Organisasi</a>
					<a class="dropdown-item" href="<?= base_url('profil/fasilitas') ?>">Fasilitas</a>
				</div>
				</li>
				<li class="nav-item dropdown <?php if($title == 'Kegiatan Mahasiswa' || $title == 'Pelayana Mahasiswa' ) echo "active"; ?>">
				<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					Kemahasiswaan
				</a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
					<a class="dropdown-item" href="<?= base_url('kemahasiswaan/pelayanan') ?>">Pelayanan Mahasiswa</a>
					<a class="dropdown-item" href="<?= base_url('kemahasiswaan/kegiatan') ?>">Kegiatan Mahasiswa</a>
				</div>
				</li>
				
				<li class="nav-item <?php if($title == 'Berita') echo "active"; ?>">
				<a class="nav-link" href="<?= base_url('blog') ?>">Berita</a>
				</li>
			</ul>
		</div>
	</div>
</nav>
