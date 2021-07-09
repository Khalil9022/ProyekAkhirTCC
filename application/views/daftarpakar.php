<div class="jumbotron jumbotron-fluid">
    <div class="container">
        <h1 class="text-center my-primary-color"><i class="fas fa-users fa-1x"></i> Daftar Nama Pakar</h1>
    </div>

    <div class="container">
        <section id="namaPakar">
            <div class="card ">
                <div class="card-header">
                    Data Pakar
                </div>
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
            </div>
        </section>
    </div>
</div>