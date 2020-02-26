<?php

include 'database.php';
$fullname   = $_POST['exampleInputEmail1'];
$username	= $_POST['exampleInputEmail1'];
$email      = $_POST['exampleInputEmail1'];
$password   = $_POST['exampleInputPassword1'];
$password1   = $_POST['exampleInputPassword2'];

if($password==$password1){
	
$input			= mysqli_query($conn, "INSERT INTO `user`(`fullname`, `username`, `email`, `password`) VALUES ('$fullname', '$username', '$email', '$password1')");

if($input){
	session_start();
	$_SESSION['username'] = $username;
	?>
	<script>
	alert('Anda berhasil signup..!')
	history.go(-1);
	// document.location.href='google.php';'
	</script>
	<?php
		
}else{
	
	echo "Error: " . $sql . "<br>" . $conn->error;
		
}

}else{

	?>
	<script>
		alert('Password tidak sama!');
		// window.history.back();
		history.go(-1);
		// document.location.href='window.history.back()';
	</script>
	<?php
	// echo "<script>alert('Password Not Match..!');</script>";
}

?>