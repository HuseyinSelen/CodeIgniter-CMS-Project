<div class="row">
    <div class="col-md-12">
        <div class="widget">
            <div class="widget-body">
                <form action="../api/dropzone" class="dropzone" data-plugin="dropzone" data-options="{ url: '../api/dropzone'}">
                    <div class="dz-message">
                        <h3 class="m-h-lg">Drop files here or click to upload.</h3>
                        <p class="m-b-lg text-muted">(This is just a demo dropzone. Selected files are not actually uploaded.)</p>
                    </div>
                </form>
            </div><!-- .widget-body -->
        </div><!-- .widget -->
    </div><!-- END column -->
</div>
<div class="row">
    <div class="col-md-12">
        <h4 class="m-b-lg">
            Ürünün Fotoğrafları...
        </h4>
    </div><!-- END column -->
    <div class="col-md-12">
        <div class="widget">
            <div class="widget-body">
                <table class="table table-bordered table-striped table-hover pictures_list">
                    <thead>
                        <th>#id</th>
                        <th>Görsel</th>
                        <th>Resim Adı</th>
                        <th>Durumu</th>
                        <th>İşlem</th>
                    </thead>
                    <tbody>
                        <tr>
                            <td class=".w100 text-center">#1</td>
                            <td class=".w100 text-center"><img width="30" src="https://images.unsplash.com/photo-1576158114131-f211996e9137?q=80&w=880&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="" class="img-responsive"></td>
                            <td>deneme-urunu.jpg</td>
                            <td class=".w100 text-center"><input
                                    data-url="<?php echo base_url("product/isActiveSetter/"); ?>"
                                    class="isActive"
                                    type="checkbox"
                                    data-switchery
                                    data-color="#10c469"
                                    <?php echo (true) ? "checked" : ""; ?> /></td>
                            <td class=".w100 text-center">
                                <button
                                    data-url="<?php echo base_url("product/delete/"); ?>" class="btn btn-xs btn-danger btn-outline btn-block remove-btn">
                                    <i class="fa fa-trash"></i>Sil</button>
                            </td>
                        </tr>
                        <tr>
                            <td class=".w100 text-center">#1</td>
                            <td class=".w100 text-center"><img width="30" src="https://images.unsplash.com/photo-1576158114131-f211996e9137?q=80&w=880&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="" class="img-responsive"></td>
                            <td>deneme-urunu.jpg</td>
                            <td class=".w100 text-center"><input
                                    data-url="<?php echo base_url("product/isActiveSetter/"); ?>"
                                    class="isActive"
                                    type="checkbox"
                                    data-switchery
                                    data-color="#10c469"
                                    <?php echo (true) ? "checked" : ""; ?> /></td>
                            <td class=".w100 text-center">
                                <button
                                    data-url="<?php echo base_url("product/delete/"); ?>" class="btn btn-xs btn-danger btn-outline btn-block remove-btn">
                                    <i class="fa fa-trash"></i>Sil</button>
                            </td>
                        </tr>
                        <tr>
                            <td class=".w100 text-center">#1</td>
                            <td class=".w100 text-center"><img width="30" src="https://images.unsplash.com/photo-1576158114131-f211996e9137?q=80&w=880&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="" class="img-responsive"></td>
                            <td>deneme-urunu.jpg</td>
                            <td class=".w100 text-center"><input
                                    data-url="<?php echo base_url("product/isActiveSetter/"); ?>"
                                    class="isActive"
                                    type="checkbox"
                                    data-switchery
                                    data-color="#10c469"
                                    <?php echo (true) ? "checked" : ""; ?> /></td>
                            <td class=".w100 text-center">
                                <button
                                    data-url="<?php echo base_url("product/delete/"); ?>" class="btn btn-xs btn-danger btn-outline btn-block remove-btn">
                                    <i class="fa fa-trash"></i>Sil</button>
                            </td>
                        </tr>

                    </tbody>
                </table>
            </div><!-- .widget-body -->
        </div><!-- .widget -->
    </div><!-- END column -->
</div>