<!-- Carousel -->
<div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
	<div class="carousel-inner">
		<?php $no = 0;?>
		<?php foreach($banners as $banner) : ?>
			<?php $no++;  ?>
			<div class="carousel-item <?php if($no <= 1) { echo "active"; } ?>">
				<img src="<?= base_url("img/banner/$banner->photo") ?>" class="d-block w-100">
				<div class="carousel-caption d-none d-md-block 	">
					<h1><?= $banner->title ?></h1>
					<p><?= $banner->text ?></p>
				</div>
			</div>
		<?php endforeach ?>
	</div>
	<a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
		<span class="carousel-control-prev-icon" aria-hidden="true"></span>
		<span class="sr-only">Previous</span>
	</a>
	<a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
		<span class="carousel-control-next-icon" aria-hidden="true"></span>
		<span class="sr-only">Next</span>
	</a>
</div>
<!-- End of Carousel -->

<!-- Berita -->
<div class="last-news mt-5 mb-5">
	<div class="container">
		<div class="row d-flex justify-content-center">
			<div class="col">
				<h2 class="text-center">Berita Terbaru</h2>
				<hr>
			</div>
		</div>
		<div class="row mt-4">
			<?php foreach($berita as $b) : ?>
				<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
					<div class="card" style="width: 15rem; height: 24rem;">
						<img style="height:150px" src="<?= base_url('img/berita/thumbs/' . $b->photo) ?>" class="card-img-top">
						<div class="card-body">
							<h5 class="card-title"><?= $b->title ?></h5>
							<p class="card-text"><?= character_limiter($b->content,50) ?></p>
							<a href="<?= base_url("index.php/blog/baca/$b->seo_title") ?>" class="btn btn-info btn-sm">Lanjut Membaca<i class="fa fa-angle-right ml-2"></i></a>
						</div>
					</div>
				</div>
			<?php endforeach ?>
		</div>
		<div class="row mt-4">
			<div class="col text-center">
				<a href="<?= base_url('index.php/blog') ?>" class="btn btn-secondary text-light">Lihat Selengkapnya<i class="fa fa-angle-double-right ml-2"></i></a>
			</div>
		</div>
	</div>
</div>
<!-- End of Berita -->


<!-- Tri Dharma -->
<div class="jumbotron jumbotron-fluid bg-cover jurusan mt-5" style="background-image: url(<?= base_url('img/background/ffm.jpeg') ?>)">
	<div class="container text-center">
		<div class="row">
			<div class="col">
				<h2 class="">Tri Dharma Perguruan Tinggi</h2>
			</div>
		</div>
		<hr>
		<div class="row pt-3 ">
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 mb-4 ">
				<img class="rounded-circle bg-light bg-gradient" src="<?= base_url('img/tridharma/pendidikan.png') ?>" alt="">
				<h5 class="mt-2">Pendidikan</h5>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 mb-4">
				<img class="rounded-circle bg-light bg-gradient" src="<?= base_url('img/tridharma/penelitian.png') ?>" alt="">
				<h5 class="mt-2">Penelitian</h5>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 mb-4">
				<img class="rounded-circle bg-light bg-gradient" src="<?= base_url('img/tridharma/pengabdian.png') ?>" alt="">
				<h5 class="mt-2">Pengabdian</h5>
			</div>
		</div>
	</div>
</div>
<!-- End of Jurusan -->
 
<!-- End of Kerjasama -->
