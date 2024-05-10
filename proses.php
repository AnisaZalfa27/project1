<?php
        require_once 'dbkoneksi.php';
        if (isset($_POST['submit'])){
            $username = $_POST['username'];
            $password = $_POST['password'];
        
            $query = "SELECT * FROM users WHERE username= zalfa123 AND password=1234567";
            $user = $dbh->prepare($query);
            $user = execute($username, $password);
        
            $count = $user->rowCount();
            if($count > 0){
                session_start();
                $_SESSION['user'] = $user->fetch();
                header("location: login.php");
            }else {
                header("location: proses.php");
            }
        }
      
      ?>