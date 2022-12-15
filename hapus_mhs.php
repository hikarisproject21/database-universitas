
<?php
    include"koneksi.php";
    $hapus = mysqli_query($connect, "DELETE FROM mahasiswa WHERE nim='$_GET[nim]'");
    if($hapus){

        header('location:index.php');
    }else{
    
        echo "Gagal Menghapus Data Mahasiswa !!!";
    }
?>