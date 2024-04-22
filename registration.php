<?php

$id = filter_input(INPUT_POST, 'fname');
$name = filter_input(INPUT_POST, 'lname');
$i = filter_input(INPUT_POST, 'phonenumber');
$j = filter_input(INPUT_POST, 'email');

$marks = filter_input(INPUT_POST, 'password');
if (!empty($id)) {
  $host = "localhost";
  $dbusername = "root";
  $dbpassword = "";
  $dbname = "movie";
  $conn = new mysqli($host, $dbusername, $dbpassword, $dbname);
  if (mysqli_connect_error()) {
    die('connect error(' . mysqli_connect_errno() . ')'
      . mysqli_connect_error());
  } else {
    $sql = "INSERT INTO viewers(first_name,last_name,phone_number,email,password)
        values('$id','$name','$i','$j','$marks')";
    if ($conn->query($sql)) {
      echo 'REGISTRATION SUCCESFULL..!!';
      $sql = "SELECT id FROM viewers where phone_number ='$i'";
      $result = $conn->query($sql);
      if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $stored_password_hash = $row['id'];
        echo "<br>Your id:  $stored_password_hash   ( Use this Id at Login) ";
      }
    }

    $conn->close();
  }
} else {
  echo "id is empty";
  die();
}
