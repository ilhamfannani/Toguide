

        <?php      
                  $usermail = $_POST['usermail'];
                  $body = "
                  Email: $email <br/>
                  ";
                  
                  function Send_Mail($to,$subject,$body)
                  {
                  include  'database.php';
                  
                   
                  
                  $usermail= $_POST['usermail'];
                  $mail = new PHPMailer();
                  $mail->IsMail(true); // SMTP
                  $mail->SMTPAuth = true; // SMTP authentication
                  $mail->Host= "smtp.gmail.com"; //host yang kita pake
                  $mail->SMTPSecure = 'tls';
                  $mail->Port = 587; // port xampp(?)
                  $mail->SetFrom("email@gmail.com","email sender");  //email admin
                  $mail->Username = "admin@hellotogu.com"; // username gmail admin
                  $mail->Password = "*****"; // Password email admin
                  $mail->SetFrom($usermail, 'user');
                  $mail->AddReplyTo($usermail,'user');
                  $mail->Subject = $subject;
                  $mail->MsgHTML($body);
                  $address = $to;
                  $mail->AddAddress($address, $to);
                  $mail->AddAddress($usermail);
                  if(!$mail->Send())
                  return false;
                  else
                  return true;
                  
                  }
                  
                  $to = "emailtujuan@gmail.com"; //email user yang udah subs
                  $subject = "Verification To Guide"; // subject email
                  echo"<br/><br/><center><h3>email telah terkirim</h3></center>";
                  Send_Mail($to,$subject,$body);
                  ?>