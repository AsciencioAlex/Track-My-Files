<?php

$position = array("--Select Position--","Admin","User","Cordinator");

$deparment = array("--Select Department--","Administrator","User");

  $host = "localhost";
  $user = "root";
  $pass = "";
  $database = "u591963919_TrackFilesDB";

  $connection_String = mysqli_connect($host,$user,$pass,$database);


  if(isset($_POST["submit"])){

    $first_name = $_POST["txtfname"];
    $last_name = $_POST["txtlname"];
    $user_password = $_POST["txtpassword"];

    if($first_name!="" && $last_name!="" && $user_password!=""){

      $security_key_check_command = "SELECT * FROM users_table WHERE password = '$user_password' AND user_fname='$first_name' AND user_lname = '$last_name'";
      $execute_check_command = mysqli_query($connection_String,$security_key_check_command);
      $check_user_validity_status = mysqli_num_rows($execute_check_command);
      if($check_user_validity_status >= 1){
        echo "<script>alert('Sorry, You have already registered')</script>";
      }else{        
        $register_user_command = "INSERT INTO users_table (`Users_ID`, `user_fname`, `user_lname`, `Password`, `Profile_Picture`) VALUES (NULL, '$first_name', '$last_name', '$user_password', '')";
        if($execute_register_command = mysqli_query($connection_String,$register_user_command)){
        echo "<script>alert('You have registered Successfully')</script>";
      }else{
        "<script>alert('Sorry, You cannot be registered, Contact The Administrator')</script>";
      }
    }
  }else{
    echo "<script>alert('Please Fill All Spaces Provided')</script>";
  }
}
 ?>
<!--<!DOCTYPE html>-->
<html >
<head>
  <meta charset="UTF-8">
  <title>Sign Up</title>
  <link rel="stylesheet" href="Login_css/style.css">
</head>

<style type="text/css">
.selected_position,.selected_department{
  width: 100%;
  height: 50px;
}
.flex-row-adjusted{
  height: 30px;
}
a{
  color:#2dc6bf;
}
.lf--submit-adjusted{
  padding-bottom: .5em;
}
</style>

<body>
  <form class='login-form' method="post">
  <div class="flex-row">
    <input id="fname" class='lf--input' placeholder='Enter Username' type='text' name="txtfname">
  </div>
  <div class="flex-row">
    <input id="lname" class='lf--input' placeholder='Enter Last Name' type='text' name="txtlname">
  </div>

  <div class="flex-row">
    <input id="password" class='lf--input' placeholder='Password' type='password' name="txtpassword">
  </div>

  <input class='lf--submit lf--submit-adjusted' type='submit' value='Sign Up' name="submit" id="btnSubmit">

  <p style="font-size:.6em;color:#2dc6bf;text-align:center;cursor:hand"><u><a href="login.php">Sign In</a></u></p>
   <p style="font-size:.6em;color:#2dc6bf;text-align:center;cursor:hand"><u><a href="index.html">Home</a></u></p>

</form>
</body>

</html>
