<?php $this->load->view('auth/templates/header') ?>
	<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <?php $this->load->view('back/layouts/_sidebar') ?>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>

          <!-- Topbar Navbar -->
    		<?php $this->load->view('back/layouts/_topbar') ?>
        </nav>
        <!-- End of Topbar -->

			<!-- Begin Page Content -->
			<div class="container">
				<div class="row">
					<div class="col">
                                    <h1><?php echo lang('create_user_heading');?></h1>
                                    <p><?php echo lang('create_user_subheading');?></p>
					</div>
				</div> 
               
				<!-- <div class="row">
					<div class="col-md-6">
						<?php if($message) : ?>
							<div class="alert alert-danger alert-dismissible fade show" role="alert">
								<div id="infoMessage"><?= $message;?></div>
								<button type="button" class="close" data-dismiss="alert" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
						<?php endif ?>
					</div>
				</div> -->

				<?= form_open(uri_string());?>
				<div class="form-row mt-3">
					<div class="form-group col-md-4">
                                    <?php echo lang('create_user_fname_label', 'first_name');?> <br />
                                    <?php echo form_input($first_name, '',['class' => 'form-control', 'autocomplete' => 'off']);?>
					</div>
					<div class="form-group col-md-4">
                                    <?php echo lang('create_user_lname_label', 'last_name');?> <br />
                                    <?php echo form_input($last_name, '',['class' => 'form-control', 'autocomplete' => 'off']);?>
					</div>
				</div>

				<div class="form-row ">
					<div class="form-group col-md-4">
                                    <?php echo lang('create_user_email_label', 'email');?> <br />
                                    <?php echo form_input($email, '',['class' => 'form-control', 'autocomplete' => 'off']);?>
					</div>
					<div class="form-group col-md-4">
						<?php echo lang('create_user_phone_label', 'phone');?> <br />
                                    <?php echo form_input($phone, '',['class' => 'form-control', 'autocomplete' => 'off']);?>
					</div>
				</div>

				<div class="form-row ">
					<div class="form-group col-md-4">
                                    <?php echo lang('create_user_password_label', 'password');?> <br />
                                    <?php echo form_input($password, '',['class' => 'form-control', 'autocomplete' => 'off']);?>
					</div>
					<div class="form-group col-md-4">
                                    <?php echo lang('create_user_password_confirm_label', 'password_confirm');?> <br />
                                    <?php echo form_input($password_confirm, '',['class' => 'form-control', 'autocomplete' => 'off']);?>
					</div>
				</div>

				<div class="row">
					<div class="col-8">
						<a href="<?= base_url('admin'); ?>" class="btn btn-secondary btn-sm"><i class="fas fa-angle-left mr-1"></i>Kembali</a>
						<?php echo form_submit('submit', 'Simpan', ['class' => 'btn btn-primary btn-sm float-right']);?>

					</div>
				</div>

				<?= form_close();?>
				</div>

      	</div>
      <!-- End of Main Content -->

		<!-- Footer -->
		<?php $this->load->view('back/layouts/_footer') ?>
		<!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Anda yakin ingin keluar ?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Klik tombol "Logout" untuk keluar.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Batal</button>
          <a class="btn btn-primary" href="<?= base_url('auth/logout') ?>">Logout</a>
        </div>
      </div>
    </div>
  </div>

<?php $this->load->view('auth/templates/footer') ?>
