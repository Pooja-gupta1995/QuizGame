<?php
 
   
   
   $con = mysqli_connect('localhost','root');
  
   	mysqli_select_db($con,'quizdatabases');
	
   
   ?>

<!DOCTYPE html>
<html>
   <head>
      <title></title>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
      <link href="https://fonts.googleapis.com/css?family=Montserrat|Open+Sans" rel="stylesheet">
      <link rel="stylesheet" type="text/css" href="style.css">
      <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
      <link rel="stylesheet" type="text/css" href="
         https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
      <style type="text/css">
         .animateuse{
         animation: leelaanimate 0.5s infinite;
         }
         @keyframes leelaanimate{
         0% { color: red },
         10% { color: yellow },
         20%{ color: blue }
         40% {color: green },
         50% { color: pink }
         60% { color: orange },
         80% {  color: black },
         100% {  color: brown }
         }
      </style>
	     
		 <script>
var seconds = 30;
function secondPassed() {
    var minutes = Math.round((seconds - 30)/60);
    var remainingSeconds = seconds % 60;
    if (remainingSeconds < 10) {
        remainingSeconds = "0" + remainingSeconds;  
    }
    document.getElementById('countdown').innerHTML = minutes + ":" + remainingSeconds;
    if (seconds == 0) {
        clearInterval(countdownTimer);
		document.getElementById('form').submit.click();
        document.getElementById('countdown').innerHTML = "Time up";
		
    } else {
        seconds--;
    }
}

 
var countdownTimer = setInterval('secondPassed()', 500);
</script>
   </head>
   <body onload="secondPassed()">

   

      <div>
       <!--   <h1 class="text-center text-white font-weight-bold text-uppercase bg-dark" >  Complete Quiz Website using PHP and MYSQL using Session</h1><br>
      <div class="container "><br> -->
         <h1 class="text-center text-white font-weight-bold text-uppercase bg-dark" > Quiz </h1><br>
      <div class="container "><br>
         <div class="container">
         
            <!-- <h1 class="text-center text-success text-uppercase animateuse" >  ThapaTechnical  Webdeveloper Quiz </h1>
            <br> -->
            <div class=" col-lg-12 text-center">
               <h3> <a href="#" class="text-uppercase text-warning"></a> Quiz Game </h3>
            </div>
            <br>
            <div class="col-lg-8 d-block m-auto bg-light quizsetting ">
               <div class="card">
                  <p class="card-header text-center" >
				 
				   you have to select only one out of 4. Best of Luck  </p>
               </div>
			   
               <br>
			   <div id="countdown" class="timer" style="float:right">Time</div>
               <form action="checked.php" method="post" id="form">
                  <?php
                     for($i=11;$i<16;$i++){
                     $l = 1;
                  
                     $ans_id = $i;

                     $sql1 = "SELECT * FROM `question` WHERE `q_id` = $i ";
                     	$result1 = mysqli_query($con, $sql1);
                     		if (mysqli_num_rows($result1) > 0) {
                     						while($row1 = mysqli_fetch_assoc($result1)) {
                     	?>				
                  <br>
                  <div class="card">
                     <br>
                     <p class="card-header">  <?php echo  $row1['question']; ?> </p>
                    
                     <?php
                        $sql = "SELECT * FROM `answers` WHERE `q_id` = $i";
                        	$result = mysqli_query($con, $sql);
                        		if (mysqli_num_rows($result) > 0) {
                        						while($row = mysqli_fetch_assoc($result)) {
                        	?>	
                           
                     <div class="card-block">
                        <input type="radio" name="quizcheck[<?php echo $ans_id; ?>]" id="<?php echo $ans_id; ?>" value="<?php echo $row['a_id']; ?>" > <?php echo $row['answers']; ?> 
                        <br>
                     </div>
                     <?php
                        
                        } } 
                        $ans_id = $ans_id + $l;
                        } }}
                        
                     ?>
                  </div>

                  <br>
                  <input  id="Submit" type="submit" name="submit" Value="submit" class="btn btn-success m-auto d-block" /> <br>
               </form>
			   
               <p id="letc"></p>
            </div>
            <br>

         </div>
         <br>
         <footer>
            <h5 class="text-center"></h5> 
         </footer>
      </div>


      



   </body>
</html>
