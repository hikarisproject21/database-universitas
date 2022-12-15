<!-- Halaman utama penambahan data mahasiswa -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form input data mahasiswa</title>
</head>
    <body>
        <h3>Input Data Mahasiswa</h3>

            <form method="POST" action="">
            
                    <table>
                        <tr>
                            <td>NIM</td>
                            <td><input type="text" name="nim" size="18"></td>
                        </tr>
                        <tr>
                            <td>Nama</td>
                            <td><input type="text" name="nama" size="18"></td>
                        </tr>
                        <tr>
                            <td>Jenis Kelamin</td>
                            <td>
                                <input type="radio" name="jk" value="Laki-Laki">Laki-Laki
                                <input type="radio" name="jk" Value="Perempuan">Perempuan
                            </td>
                        </tr>
                        <tr>
                            <td>kelas</td>
                            <td><input type="text" name="kelas" size="18"></td>
                            
                        </tr>
                        <tr>
                            <td>programm studi</td>
                            <td><input type="text" name="prodi" size="18"></td>
                        </tr>
                        <tr>
                            <td>Angkatan</td>
                            <td><input type="text" name="angkatan" size="18"></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Simpan"></td>
                        </tr>
                    </table>
          
            </form>
      
            <?php
                include "koneksi.php";
                
                if($_SERVER['REQUEST_METHOD']=='POST'){
              
                    $simpan = mysqli_query($connect,"INSERT INTO mahasiswa(nim, nama, jk, kelas, prodi, angkatan)
                    VALUES('$_POST[nim]', '$_POST[nama]', '$_POST[jk]', '$_POST[kelas]', '$_POST[prodi]', '$_POST[angkatan]')");
                  
                    if($simpan){
                        header('location:index.php');
                    }else{
                       
                        echo"Gagal Menyimpan Data Mahasiswa !!!";
                    }
                }
            ?>

    </body>

</html>