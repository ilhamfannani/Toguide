<?php

include 'database_chatbot.php';
$method = $_SERVER['REQUEST_METHOD'];
	//POST METHOD
	if ($method == 'POST') {
		$requestBody = file_get_contents('php://input');
		
		$json = json_decode($requestBody,true);
		
		$nama_laundry = $json["queryResult"]["parameters"]["laundry-name"];

		// GET DB DATA
		$query = "SELECT * FROM `laundry` WHERE `nama_laundry` = '".$nama_laundry."'";
		$result = mysqli_query($conn,$query);
		if ($result->num_rows > 0) {
			// output data of each row
			while($row = $result->fetch_assoc()) {
				$id = $row["id"];
				$N_Laundry = $row["nama_laundry"];
				$DBname = $row["dbname"];
				$DB_Username = $row["username"];
				$DB_Password = $row["password"];
			}
		} else {
			echo "0 results";
		}

		// SELECT OUTLET DB DATA
		$host_outlet	= 'localhost';
		$user_outlet	= $DB_Username;
		$pass_outlet	= $DB_Password;
		$db_outlet		= $DBname;
		// $db		= 'helc1968_cyanlaundry';

		$conn_Outlet   = mysqli_connect($host_outlet, $user_outlet, $pass_outlet, $db_outlet) or die ("Koneksi ke database GAGAL!!!");

		$nama = $json["queryResult"]["parameters"]["last-name"];
		$alamat = $json["queryResult"]["parameters"]["address"];
		$wa = $json["queryResult"]["parameters"]["phone-number"];
		$time1 = $json["queryResult"]["parameters"]["number"];
		$time2 = $json["queryResult"]["parameters"]["number1"];
		
			$query = "INSERT INTO `delivery`(`nama`, `alamat`, `ambil1`, `ambil2`, `wa`) VALUES ('$nama[0]','$alamat[0]','$time1[0]','$time2[0]','$wa[0]')";
			$execute = mysqli_query($conn_Outlet,$query);
		if($execute)
		{
			$speech = 
			"Nama : ". $nama[0] ."
			Alamat : ". $alamat[0] ."
			WA : ". $wa[0] ."\n
			Ditunggu ya kak mamang delivnya :)
			";
		}
		else
		{
		echo "Gagal Memesan, Coba Lagi";

		}
		

		$response = new \stdClass();
		$response->speech = $speech;
		$response->fulfillmentText = $speech;
		$response->source = "webhook";
		echo json_encode($response);
// 		$query = "INSERT INTO `delivery`(`nama`, `alamat`, `ambil1`, `ambil2`) VALUES ('nama','alamat','wa','wa')";
	
	}
	else{
		$requestBody = file_get_contents('php://input');
		$json = json_decode($requestBody,true);
		$saludo = $json->queryResult->queryText;
		
		$nama = $json["queryResult"]["parameters"]["last-name"];
		$alamat = $json["queryResult"]["parameters"]["address"];
		$wa = $json["queryResult"]["parameters"]["phone-number"];
		$time1 = $json["queryResult"]["parameters"]["number"];
		$time2 = $json["queryResult"]["parameters"]["number1"];

		echo "Ini web service";
	}
?>