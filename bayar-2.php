
<html>
<head>
    <style type="text/css">
        .container h1{
            margin-top: 10%;
        }
    </style>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <title>PEMBAYARAN</title>
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <link rel="stylesheet" href="css/materialize.min.css">
    <?php
    session_start();
    include 'nav.php';
    $dari = $_SESSION['dari'];
    $ke = $_SESSION['ke'];
    $awal = $_SESSION['awal'];
    $akhir = $_SESSION['akhir'];
    $_SESSION['dari'] = $dari;
    $_SESSION['ke'] = $ke;
    $_SESSION['awal'] = $awal;
    $_SESSION['akhir'] = $akhir;
    $nama = $_GET['nama'];
    $ktp = $_GET['ktp'];
    $telpon = $_GET['telp'];
    $email = $_GET['email'];
    $alamat = $_GET['alamat'];
    $id = $_SESSION['pesan'];
    include 'db.php';
    $queryInsertCustomer = mysqli_query($conn, "INSERT INTO `tb_customer`(`name`, `email`, `address`, `phone`, `ktp`) VALUES ('$nama','$email','$alamat','$telpon','$ktp')");
    $querySelectID=mysqli_fetch_array(mysqli_query($conn, "SELECT `id` FROM tb_customer WHERE `name`='$nama' limit 1"));
    $id_customer = $querySelectID[0];
    $queryInsertTransaksi = mysqli_query($conn, "INSERT INTO `tb_transaction`(`id_bus`, `id_customer`, `start_date`, `end_date`) VALUES ('$id', '$id_customer', '$awal', '$akhir')");
    $queryUpdateStock = mysqli_query($conn, "UPDATE `tb_bus` SET `stock`=stock-1 WHERE `id`='$id'");

    echo '
    <script language="javascript">
    document.location ="sms.php";
    </script>
    ';
?>
</head>
<body>
    <div class="container">
    <h1>PEMESANAN BERHASIL</h1>
    <p>Mohon melakukan pembayaran melalui rekening BeCAk pada
    A/N: Agung Riansyah
    No.Rek: 141-123456789
    Dan upload bukti pembayaran melalui chat.</p>
</div>
 <?php
include "chat.php"
     ?>
      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>
