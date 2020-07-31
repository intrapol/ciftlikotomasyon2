<?php 
include("mutfakislem.php");
$id=$_GET["masaid"];
$del="DELETE FROM `mutfak`
WHERE masaid = $id";
$delson=$db->prepare($del);
$delson->execute();
header("Location:index.php");

?>