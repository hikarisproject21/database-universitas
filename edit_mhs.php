<!-- Untuk edit data mahasiswa -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form edit data mahasiswa</title>
</head>

    <body>
        <h3>Edit Data Mahasiswa</h3>
        <?php
    
            include "koneksi.php";
            $editData = mysqli_query($connect, "SELECT * FROM mahasiswa WHERE nim='$_GET[nim]'");
            $d = mysqli_fetch_array($editData);
        ?>
        <!-- form -->
            <form method="POST" action="">

                    <table>
                        <tr>
                            <td>NIM</td>

                            <td><input type="text" name="nim" size="18" value="<?php echo $d['nim']; ?>" readonly></td>
                        </tr>
                        <tr>
                            <td>Nama</td>
                            <td><input type="text" name="nama" size="18" value="<?php echo $d['nama']; ?>"></td>
                        </tr>
        
                            <tr>
                                <td>Jenis Kelamin</td>
                                <td>
                                    <input type="radio" name="jk" value="Laki-Laki">Laki-Laki
                                    <input type="radio" name="jk" Value="Perempuan">Perempuan
                                </td>
                            </tr>
                  
                               <tr>
                            <td>Kelas</td>
                            <td><input type="text" name="kelas" size="18" value="<?php echo $d['kelas']; ?>"></td>
                        </tr>
          
                        <tr>
                            <td>Prodi</td>
                            <td><input type="text" name="prodi" size="18" value="<?php echo $d['prodi']; ?>"></td>
                        </tr>
                        <tr>
                            <td>Angkatan</td>
                            <td><input type="text" name="angkatan" size="18" value="<?php echo $d['angkatan']; ?>"></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Update"></td>
                        </tr>
                    </table>

            </form>

            <?php
   
                if($_SERVER['REQUEST_METHOD']=='POST'){

                    $update = mysqli_query($connect,"UPDATE mahasiwa SET nama='$_POST[nama]',
                    prodi='$_POST[kelas]', alamat='$_POST[prodi]', alamat='$_POST[angkatan]' WHERE nim='$_POST[nim]'");
               
                    if($update){
                        header('location:index.php');
                    }else{
                   
                        echo"Gagal Mengupdate Data Mahasiswa !!!";
                    }
                }
            ?>
    
    </body>

</html>