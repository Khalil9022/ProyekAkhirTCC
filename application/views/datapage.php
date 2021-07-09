
<div class="jumbotron jumbotron-fluid">
    <div class="container">
        <h1 class="text-center my-primary-color"><i class="fas fa-database fa-1x"></i> Data Pakar</h1>
    </div>
</div>

<section id="content">
    <div class="container">
        <section id="gejala">
            <div class="card ">
                <div class="card-header">
                    Data Gejala
                </div>
                <div class="card-body">
                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th scope="col" class="font-weight-bold" style="width: 21px;" id="no-sorting"
                                    class="font-weight-bold">No</th>
                                <th scope="col" class="font-weight-bold">Kode</th>
                                <th scope="col" class="font-weight-bold">Nama Gejala</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($gejalas as $i => $gejala) :?>
                            <tr>
                                <td><?= $i+1?></td>
                                <td><?= $gejala['id']?></td>
                                <td><?= $gejala['nama']?></td>
                            </tr>
                            <?php endforeach;?>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>

        <section id="penyakit">
            <div class="card ">
                <div class="card-header">
                    Data Penyakit / Solusi
                </div>
                <div class="card-body">
                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th scope="col" class="font-weight-bold" style="width: 21px;" id="no-sorting"
                                    class="font-weight-bold">No</th>
                                <th scope="col" class="font-weight-bold">Kode</th>
                                <th scope="col" class="font-weight-bold">Penyakit</th>
                                <th scope="col" class="font-weight-bold">Penyebab</th>
                                <th scope="col" class="font-weight-bold">Solusi</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($penyakits as $i => $penyakit) :?>
                            <tr>
                                <td><?= $i+1?></td>
                                <td><?= $penyakit['id']?></td>
                                <td><?= $penyakit['nama']?></td>
                                <td><?= $penyakit['penyebab']?></td>
                                <td><?= $penyakit['solusi']?></td>
                            </tr>
                            <?php endforeach;?>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>

    
        <section id="pengetahuan" >
            <div class="card ">
                <div class="card-header">
                    Basis Pengetahuan / Relasi
                </div>
                <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th  id="no-sorting" class="font-weight-bold">No</th>
                                <th  class="font-weight-bold">Penyakit</th>
                                <?php foreach ($gejalas as $gejala) :?>
                                <th  class="font-weight-bold"><?= $gejala['id']?></th>
                                <?php endforeach;?>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($pengetahuans2 as $i => $pengetahuan2) : ?>
                            <tr>
                                <td ><?= $i+1 ?></td>
                                <td >(<?= $pengetahuan2['id']?>) <?=$pengetahuan2['nama']?></td>
                                <?php foreach ($gejalas as $gejala) :?>
                                <td ><?= $pengetahuan2[$gejala['id']]==0?"-":"Ya" ?></td>
                                <?php endforeach;?>
                            </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
                </div>
            </div>
        </section>

	<section id="daftarpakar" >
		<div class="card-body">
                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th scope="col" class="font-weight-bold" style="width: 21px;" id="no-sorting" class="font-weight-bold">NIP</th>
                                <th scope="col" class="font-weight-bold">Nama</th>
                                <th scope="col" class="font-weight-bold">No telp.</th>
                                <th scope="col" class="font-weight-bold">Gender</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($pakar as $i => $pakars) : ?>
                                <tr>
                                    <td><?= $pakars['nip'] ?></td>
                                    <td><?= $pakars['fullname'] ?></td>
                                    <td><?= $pakars['telp'] ?></td>
                                    <td><?= $pakars['gender'] ?></td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
	</section>
    </div>
</section>