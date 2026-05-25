<!--================Home Banner Area =================-->
<div class="jumbotron banner_area jumbotron-fluid" style="margin-top: 60px; background-image: url(<?= base_url('img/banner_area/sekolah.jpg') ?>); ">
	<div class="container">
		<h1 class="display-4 my-auto text-light text-center" style="text-shadow: 2px 2px 2px black;">Fasilitas</h1>
	</div>
</div>
<!--================End Home Banner Area =================-->

<!-- Fasilitas -->
<div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
	<div class="carousel-inner my-10">
		<?php $no = 0;?>
		<?php foreach($fasilitas as $f) : ?>
			<?php $no++;  ?>
			<div class="carousel-item <?php if($no <= 1) { echo "active"; } ?>">
				<img src="<?= base_url('img/fasilitas/' . $f->photo) ?>" class="d-block w-100">
				<div class="carousel-caption d-none d-md-block">
					<h1><?= $f->name ?></h1>
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
<!-- End of Fasilitas -->
<div class="fasilitas mt-5 mb-5">
	<div class="container">
		<div class="row text-center">
			<?php foreach($fasilitas as $f) : ?>
				<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 p-2 my-4">
					<h5 class="text-center"><?= $f->name ?></h5>
					<a href="<?= base_url('img/fasilitas/' . $f->photo) ?>" target="_blank">
						<img style="height:180px" src="<?= base_url('img/fasilitas/' . $f->photo) ?>" class="img-thumbnail">
					</a>
				</div>
			<?php endforeach ?>			
		</div>
	</div>
</div>