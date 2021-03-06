<ul style="background-color: #997d00;" class="navbar-nav sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand sidebar-brandku d-flex align-items-center justify-content-center"
        href="<?= base_url() ?>admin/dashboard" style="font-size: 1.2rem; text-transform:unset;">
        <div class="sidebar-brand-icon">
            <i class="fas fa-home"></i>
        </div>
        <div class="sidebar-brand-text mx-3">ChiSeas</div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <!-- Nav Item - Dashboard -->
    <li class="nav-item <?php foreach ($this->uri->segments as $segment) : 
        echo $segment == "dashboard" ? "active":"";
        endforeach;?>">
        <a class="nav-link " href="<?= base_url() ?>admin/dashboard">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard</span></a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">
        Interface
    </div>

    <!-- Nav Item - Utilities Collapse Menu -->
    <li class="nav-item <?php foreach ($this->uri->segments as $segment) : 
        echo $segment == "gejala" ? "active":"";
        endforeach;?>">
        <a class="nav-link" href="<?= base_url() ?>admin/gejala">
            <i class="fas fa-book fa-fw"></i>
            <span>Gejala</span></a>
    </li>

    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item <?php foreach ($this->uri->segments as $segment) : 
        echo $segment == "penyakit" ? "active":"";
        endforeach;?>">
        <a class="nav-link" href="<?= base_url() ?>admin/penyakit">
            <i class="fas fa-neuter fa-fw"></i>
            <span>Penyakit</span></a>
    </li>

    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item <?php foreach ($this->uri->segments as $segment) : 
        echo $segment == "pengetahuan" ? "active":"";
        endforeach;?>">
        <a class="nav-link" href="<?= base_url() ?>admin/pengetahuan">
            <i class="fas fa-users fa-fw "></i>
            <span>Basis Pengetahuan</span></a>
    </li>

    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item ">
        <a class="nav-link" href="<?= base_url() ?>homepage" data-toggle="modal" data-target="#logoutModal">
            <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
            <span>Logout</span></a>
    </li>



    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>

</ul>