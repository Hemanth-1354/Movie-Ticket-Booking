<?php

$id = filter_input(INPUT_POST, 'Name');
$mname = filter_input(INPUT_POST, 'Moviename');
$name = filter_input(INPUT_POST, 'People');
$marks = filter_input(INPUT_POST, 'date');
$cgpa = filter_input(INPUT_POST, 'Message');
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
    $sql = "INSERT INTO bookings(ViewerID,Movie_Name,No_of_tickets,Date_of_booking,message)
values('$id','$mname','$name','$marks','$cgpa')";
    if ($conn->query($sql)) {
      echo "Booked Succesfully!!
      Enjoy your Movie";
    }
    $conn->close();
  }
} else {
  echo "id is empty";
  die();
}
