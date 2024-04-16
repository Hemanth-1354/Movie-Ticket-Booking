

<?php
// Database connection
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "movie";

$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Retrieve password hash from the database based on username or email
$userid = $_POST['userid']; // Assuming username is posted from a form
$sql = "SELECT password FROM viewers WHERE id = '$userid'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Password found, verify it
    $password = $_POST['password'];
    $row = $result->fetch_assoc();
    $stored_password_hash = $row['password'];
    if ($password == $stored_password_hash) {
        header("Location: movie.html");
    } else {
        echo $password;
    }
} else {
    echo "User not found!";
}



$conn->close();
?>
