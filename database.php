<?php

$host	= "localhost";
$user	= "helc1968_togu";
$pass	= "tugastechno";
$db		= "helc1968_user";

// $conn   = mysqli_connect($host, $user, $pass, $db) or die ("Koneksi ke database GAGAL!!!");
$conn = mysqli_connect($host, $user, $pass,$db);
// $conn = new mysqli($host, $user, $pass,$db);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}else{
    ?>
    <!-- <script>
		alert('CONNECT GAN!');
    </script> -->
    <?php
}

?>