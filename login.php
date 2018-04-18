<?php
include("connect.php");

$username= $_POST['name'];
$password=$_POST['password'];

$query = "select password from login where name = '$username'";

$result = mysqli_query($dbh,$query) or die("Error querying the database");

while($row = mysqli_fetch_array($result,MYSQLI_ASSOC))
{
 if($row['password'] != $password)
{
echo "Incorrect password";
}
else{
header('location:voting2.html');
}
}
?>
