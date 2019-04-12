<div style="background-color: #aaa;">
	<center>
		<?php
          $u=$_SESSION['username'];
		 

		?>
		<h1>Name: <?php echo "$u" ?></h1>
		<br><br>
         <h2>Books Subscribed</h2>
         <?php 
          $db=mysqli_connect('localhost','root','password','registration');
            $q="SELECT * FROM subscriber where username='$u' ";
            $res=$db->query($q);
            if ($res->num_rows ==0) 
            {
             echo "You havent applied for any books<br><br>";
            }
      while($row = $res->fetch_assoc())
     { 
     $author=$row['author'];
     $subject=$row['subject'];
     $image=$row['image'];
     $book=$row['Book_Name'];
	 $date=$row['date']; 
		?>
		<div style="height:450px">
   <img src='../images/<?php echo "$image" ?>'  style="width:200px;height:250px" >
    <br>
   <h3>
   	<?php echo "$book" ?>
   </h3>
   <p>Author: <?php echo "$author" ?> </p><br>
   <p>Subject: <?php echo "$subject" ?></p><br>
   <p>Issued On: <?php echo "$date" ?></p><br>
    <?php echo "<a href = 'includes/removelist.php?u=$u&book=$book'><button>Remove from List</button></a>"; ?>

</div>
		<?php } ?>
	</center>
</div>