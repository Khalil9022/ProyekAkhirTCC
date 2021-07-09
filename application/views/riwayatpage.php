<div class="jumbotron jumbotron-fluid">
    <div class="container">
        <h1 class="text-center my-primary-color"><i class="fas fa-file-medical-alt fa-1x"></i> Riwayat Diagnosa</h1>
    </div>
</div>

<section id="content">
    <div class="container">
    <div class="card">
        <div class="card-header">
            Data Riwayat
        </div>
        <div class="card-body">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th class="font-weight-bold" style="width: 21px;" id="no-sorting">No</th>
                        <th class="font-weight-bold">Nama </th>
                        <th class="font-weight-bold">Nomor Handphone </th>
                        <th class="font-weight-bold">Penyakit </th>
                        <th class="font-weight-bold" style="width: 30px;">Detail </th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($users as $i => $user) :?>
                    <tr>
                        <td><?= $i+1?></td>
                        <td><?= $user['nama_pemilik']?></td>
                        <td><?= $user['no_telp']?></td>
                        <td>(<?= $user['analisa']?>)<?= $user['nama']?></td>
                        <td><a href="<?= base_url('riwayatpage/detailPage/'.$user['id_user'])?>"
                                class="btn btn-warning">Detail</a></td>
                    </tr>
                    <?php endforeach;?>
                </tbody>
            </table>
        </div>
    </div>
    </div>
</section>