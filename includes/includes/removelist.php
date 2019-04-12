
<?php
	$username = $_GET["u"];
	$book = $_GET["book"];
	$db=new mysqli('localhost','root','password','registration');
$qrr = "Delete from `subscriber` where Book_Name='$book' and Username='$username' ";
mysqli_query($db, $qrr);
 
// echo "<h1>$username</h1>";
$db->close();
//	if(mysqli_query($con, $qrr));
//	else{
//		$qr1="DELETE FROM `likes` WHERE uid='$userid' and pid = $postid";
//		mysqli_query($con, $qr1);
//	}
//	$qr7 = "SELECT count(*) FROM `likes` WHERE pid = $postid";
//	$res = mysqli_query($con, $qr7);
//	$count = mysqli_fetch_assoc($res)['count(*)'];
//	$qr8 = "UPDATE `blogpost` SET likes_count = $count WHERE pid = $postid";
		echo "<script>window.location.href='../profile.php'</script>";
?>


