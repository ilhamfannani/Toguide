<html>
<head>
    <style type="text/css">
        input{
            width: 70%;
            border-radius: 5px;
            text-align: center;
            height: 7%;
        border-top: none;
        border-right: none;
        border-left: none;
        }textarea{
            width: 70%;
            height: 7%;
             border-radius: 5px;
            text-align: center;
              border-top: none;
        border-right: none;
        border-left: none;
        }form{
            margin-top: 5%;
        }.container h4{
            color: #696969;
            padding-bottom: 5%;
             

        }.container{
            margin-top: 5%;

        }.bayar{
            width: 50%;
        }.bayar button{
            width: 70%;
            height: 7%;
        }
    </style>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<style type="text/css"> 
.data{
    margin-top: 10%;
}
</style>
    <title>JALANI AJA DULU</title>
   
    <?php session_start();
    include 'nav.php'?>
</head>
<body>
    <?php
    $pesan = $_GET['pesan'];
    $dari = $_SESSION['dari'];
    $ke = $_SESSION['ke'];
    $awal = $_SESSION['awal'];
    $akhir = $_SESSION['akhir'];
    $_SESSION['pesan'] = $pesan;
    $_SESSION['dari'] = $dari;
    $_SESSION['ke'] = $ke;
    $_SESSION['awal'] = $awal;
    $_SESSION['akhir'] = $akhir;
    include_once 'db.php';
    $querySelect = "SELECT * from tb_bus WHERE `id`=".$pesan;
    $queryRun = mysqli_query($conn, $querySelect);
    $data = mysqli_fetch_array($queryRun);
    $harga = $data['price'];
    $total = ((strtotime($akhir)-strtotime($awal))/ (60 * 60 * 24) )*$harga;


    ?>
    <center>
<div class="container">
    <div class="row">
        <div class="col-lg-12">
             <?php echo 'Anda memesan bis '.$data['brand']." ".$data['name']; ?>
        </div>
        
    </div>
</div>
</center>
<center>
<div class="bayar">
    <form action="bayar-2.php" method="get" 
    onsubmit="return confirm('Anda akan melakukan perjalanan ke <?php echo $ke?> dimulai dari tanggal <?php echo $awal?> sampai <?php echo $akhir?>. Biaya total: Rp<?php echo $total?>')">
    <div class="container shadow-lg p-3 mb-5 bg-white rounded " >
       
        <center>
       
        <div class="row">
            <div class="col-lg-12">
                  <h4>Masukkan data diri Anda </h4>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <p>
               <img src="img/person.png" width="30px">   <input type="text" class="input grey lighten-2" name="nama" id="nama" placeholder="Masukkan nama"  required>
        <p>
       
           <img src="img/ktp.png" width="30px"> <input type="text" class="input grey lighten-2" name="ktp" id="ktp" placeholder="Masukkan KTP"  required>
      
        <p>
            <img src="img/phone.png" width="30px"> <input type="text" class="input grey lighten-2" id="telp" name="telp" placeholder="Masukkan No. Telp"  required>
       
        <div class="divider"></div>
        <p>
             <img src="img/email.png" width="30px"><input type="email" class="input grey lighten-2" name="email" id="email" placeholder="Masukkan Alamat Email"  required>

        <p>
            <img src="img/home.png" width="30px"> <textarea name="alamat" rows="20" cols="10" class="grey lighten-2" id="alamat" placeholder="Masukkan Alamat"  required></textarea>
        </p>
        <button type="submit" class="btn btn-danger">Submit</button>
            </div>
        </div>
      
      
            </center>
    </div>
    </form>
    </div>
    </center>
     <?php
include "chat.php"
     ?>
    <?php
    include "footer.php"
    ?>

</body>
</html>