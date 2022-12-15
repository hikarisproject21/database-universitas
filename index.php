<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data Mahasiswa</title>
</head>
    <body>
        <center><h3>Data Mahasiswa</h3></center>
        <a href="tambah_mhs.php">Tambah Data Mahasiswa</a>
        <hr>
            <table border="1" cellspacing="0" width="100%">
                    <tr>
                        <th>No.</th>
                        <th>NIM</th>
                        <th>Nama Mahasiswa</th>
                        <th>Jenis Kelamin</th>
                        <th>Kelas</th>
                        <th>Program Studi</th>
                        <th>Angkatan</th>
                        <th>Aksi</th>
                    </tr>
           
                <?php
                    include"koneksi.php";
    
                    $No=1;
                    $sqlMhs = mysqli_query($connect, "SELECT * FROM mahasiswa ORDER BY nama;");
                    while ($a = mysqli_fetch_array($sqlMhs)){
                        echo "<tr>
                            <td align='center'>$No</td>
                            <td>$a[nim]</td>
                            <td>$a[nama]</td>
                            <td align='center'>$a[jk]</td>
                            <td>$a[kelas]</td>
                            <td>$a[prodi]</td>
                            <td>$a[angkatan]</td>
                            <td align='center'>
                                <a href='edit_mhs.php?nim=$a[nim]'>Edit</a> | 
                                <a href='hapus_mhs.php?nim=$a[nim]'>Hapus</a>
                            </td>
                        </tr>";
                        $No++;
                    }
                ?>
            </table>
    </body>
</html>