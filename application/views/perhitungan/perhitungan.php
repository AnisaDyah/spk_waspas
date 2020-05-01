<?php $this->load->view('layouts/header_admin'); ?>

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
              </div>
            </div>

            <div class="clearfix"></div>

            <div class="row">
              
              <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="x_panel">
      <div class="box-header with-border">
        <h3 class="box-title">Tabel Pencocokan Kriteria</h3>
      </div><!-- /.box-header -->
      <div class="box-body">
        <table class="table table-hover table-bordered">
          <thead>
            <tr>
              <th>Alternatif</th>
              <?php foreach ($kriteria as $key): ?>
                <th><?= $key->kode_kriteria ?></th>
              <?php endforeach ?>
              <th>Aksi</th>
            </tr>
          </thead>
          <tbody>
            <?php if ($tenaga_kerja==NULL): ?>
              <tr>
                <td class="text-center" colspan="<?= 2+count($kriteria)  ?>">Silahkan lengkapi data di halaman <a href="<?= base_url('Tenaga_kerja/create') ?>" class="text-black"><u>Data.</u></a></td>
              </tr>
            <?php endif ?>

            <?php foreach ($tenaga_kerja as $keys): ?>
              <tr>
                <td><?= $keys->nama ?></td>
                <?php foreach ($kriteria as $key): ?>
                  <td>
                    <?php 
                    $id_user=$this->session->userdata('id_user');
                      $data_pencocokan = $this->Perhitungan_model->data_nilai($id_user,$keys->id_naker,$key->id_kriteria);
                      echo $data_pencocokan['nilai'];
                    ?>
                  </td>
                <?php endforeach ?>

                <?php $cek_tombol = $this->Perhitungan_model->untuk_tombol($id_user,$keys->id_naker); ?>

                <td width="7%">
                  <?php if ($cek_tombol==0) { ?>
                    <a href="#set<?= $keys->id_naker ?>" data-toggle="modal" class="btn btn-primary btn-sm" title="edit"><i class="fa fa-pencil"></i> Set</a>
                  <?php } else { ?>
                    <a href="#edit<?= $keys->id_naker ?>" data-toggle="modal" class="btn btn-primary btn-sm" title="edit"><i class="fa fa-pencil"></i> Edit</a>
                  <?php } ?>
                </td>
              </tr>
              
              <!-- set -->
              <!-- Modal -->
              <div class="modal fade" id="set<?= $keys->id_naker ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                  <div class="modal-dialog">
                      <div class="modal-content">
                          <div class="modal-header">
                              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                              <h4 class="modal-title" id="myModalLabel">Penilaian</h4>
                          </div>
                          <?= form_open('Perhitungan/tambah_penilaian') ?>
                              <div class="modal-body">
                                  <?php foreach ($kriteria as $key): ?>
                                    <?php 
                                      $sub_kriteria = $this->Perhitungan_model->data_sub_kriteria($key->id_kriteria);
                                    ?>
                                    <?php if ($sub_kriteria!=NULL): ?>
                                      <input type="text" name="id_naker" value="<?= $keys->id_naker ?>" hidden>
                                      <input type="text" name="id_kriteria[]" value="<?= $key->id_kriteria ?>" hidden>
                                      <div class="form-group">
                                        <label for="<?= $key->id_kriteria ?>"><?= $key->keterangan ?></label>
                                        <select name="nilai[]" class="form-control" id="<?= $key->id_kriteria ?>" required>
                                          <option value="">--Pilih--</option>
                                          <?php foreach ($sub_kriteria as $subs_kriteria): ?>
                                            <option value="<?= $subs_kriteria['id_sub_kriteria'] ?>"><?= $subs_kriteria['deskripsi'] ?> </option>
                                          <?php endforeach ?>
                                        </select>
                                      </div>
                                    <?php endif ?>
                                  <?php endforeach ?>
                              </div>
                              <div class="modal-footer">
                                  <button type="button" class="btn btn-default" data-dismiss="modal">Batal</button>
                                  <button type="submit" class="btn btn-primary">Tambah</button>
                              </div>
                          </form>
                      </div>
                      <!-- /.modal-content -->
                  </div>
                  <!-- /.modal-dialog -->
              </div>
              <!-- /.modal -->

              <!-- edit -->
              <!-- Modal -->
              <div class="modal fade" id="edit<?= $keys->id_naker ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                  <div class="modal-dialog">
                      <div class="modal-content">
                          <div class="modal-header">
                              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                              <h4 class="modal-title" id="myModalLabel">Pencocokan</h4>
                          </div>
                          <?= form_open('Perhitungan/update_penilaian') ?>
                              <div class="modal-body">
                                  <?php foreach ($kriteria as $key): ?>
                                    <?php 
                                     $sub_kriteria = $this->Perhitungan_model->data_sub_kriteria($key->id_kriteria);
                                    ?>
                                    <?php if ($sub_kriteria!=NULL): ?>
                                    <input type="text" name="id_naker" value="<?= $keys->id_naker ?>" hidden>
                                      <input type="text" name="id_kriteria[]" value="<?= $key->id_kriteria ?>" hidden>
                                      <div class="form-group">
                                      <label for="<?= $key->id_kriteria ?>"><?= $key->keterangan ?></label>
                                        <select name="nilai[]" class="form-control" id="<?= $key->id_kriteria ?>" required>
                                          <option value="">--Pilih--</option>
                                          <?php foreach ($sub_kriteria as $subs_kriteria): ?>
                                            <?php 
                                              $s_option = $this->Perhitungan_model->data_penilaian($id_user,$keys->id_naker,$subs_kriteria['id_kriteria']);
                                            ?>
                                            <option value="<?= $subs_kriteria['id_sub_kriteria'] ?>" <?php if($subs_kriteria['id_sub_kriteria']==$s_option['nilai']){echo "selected";} ?>><?= $subs_kriteria['deskripsi'] ?> </option>
                                          <?php endforeach ?>
                                        </select>
                                      </div>
                                    <?php endif ?>
                                  <?php endforeach ?>
                              </div>
                              <div class="modal-footer">
                                  <button type="button" class="btn btn-default" data-dismiss="modal">Batal</button>
                                  <button type="submit" class="btn btn-primary">Simpan</button>
                              </div>
                          </form>
                      </div>
                      <!-- /.modal-content -->
                  </div>
                  <!-- /.modal-dialog -->
              </div>
              <!-- /.modal -->
            <?php endforeach ?>
          </tbody>
        </table>
      </div><!-- /.box-body -->
    </div><!-- /.box -->
              </div>

              
            </div>
          </div>
        </div>
        <!-- /page content -->

        <?php $this->load->view('layouts/footer_admin'); ?>