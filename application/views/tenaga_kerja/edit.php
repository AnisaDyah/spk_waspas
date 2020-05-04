<?php $this->load->view('layouts/header_admin'); ?>

        <!-- page content -->
        <div class="right_col">
            <div class="container">
      <br/><br/><br/>
      <legend>Edit Data Tenaga Kerja</legend>
      <div class="col-xs-12 col-sm-12 col-md-12">
      <?php echo form_open('Tenaga_kerja/update/'.$tenaga_kerja->id_naker); ?>
        <?php echo form_hidden('id_naker', $tenaga_kerja->id_naker) ?>
       
        <div class="form-group">
                <label for="nama">Nama Tenaga Kerja</label>
                <input type="text" class="form-control" id="nama" name="nama" value="<?php echo $tenaga_kerja->nama ?>">
              </div>
              <div class="form-group">
                <label for="jabatan">Jabatan</label>
                <input type="text" class="form-control" id="jabatan" name="jabatan" value="<?php echo $tenaga_kerja->jabatan ?>">
              </div>
              <div class="form-group">
          <label> Status </label>
              <select class="form-control" name ="status" id="status"> 
              <option selected> <?php echo $tenaga_kerja->status ?></option>
                  <option value="aktif">Aktif</option>
                  <option value="dikunci">Kunci</option>
            </select>
        </div>
       

        <a class="btn btn-info" href="<?php echo base_url('tenaga_kerja/index') ?>">Kembali</a>
        <button type="submit" class="btn btn-primary">OK</button>
      <?php echo form_close(); ?>
      </div>
</div>
        </div>        
        <!-- /page content -->

        <?php $this->load->view('layouts/footer_admin'); ?>