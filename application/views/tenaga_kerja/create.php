<?php $this->load->view('layouts/header_admin'); ?>

        <!-- page content -->
        <div class="right_col">
          <div class="container">
            <br/><br/><br/>
            <legend>Tambah Data Tenaga Kerja</legend>
            <div class="col-xs-12 col-sm-12 col-md-12">
            <?php echo form_open('Tenaga_kerja/store'); ?>
              
             
              <div class="form-group">
                <label for="nama">Nama Tenaga Kerja</label>
                <input type="text" class="form-control" id="nama" name="nama" placeholder="Masukkan Keterangan Nama Tenaga Kerja">
              </div>
              <div class="form-group">
                <label for="jabatan">Jabatan</label>
                <input type="text" class="form-control" id="jabatan" name="jabatan" placeholder="Masukkan Jabatan Tenaga Kerja">
              </div>
           

              <a class="btn btn-info" href="<?php echo base_url() ?>Tenaga_kerja">Kembali</a>
              <button type="submit" class="btn btn-primary">OK</button>
            <?php echo form_close() ?>
            </div>
          </div>
        </div>        
        <!-- /page content -->

        <?php $this->load->view('layouts/footer_admin'); ?>