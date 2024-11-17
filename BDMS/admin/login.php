  <?php
    include 'conn.php';

  if(isset($_POST["login"])){

    $username=mysqli_real_escape_string($conn2,$_POST["username"]);
    $password=mysqli_real_escape_string($conn2,$_POST["password"]);

    $sql="SELECT * from admintb where username='$username' and password='$password'";
    $result=mysqli_query($conn2,$sql) or die("query failed.");

    if(mysqli_num_rows($result)>0)
    {
      while($row=mysqli_fetch_assoc($result)){
        session_start();
         $_SESSION['loggedin'] = true;
        $_SESSION["username"]=$username;
        header("Location: dashboard.php");
      }
    }
    else {
      echo '<div class="alert alert-danger" style="font-weight:bold"> Username and Password are not matched!</div>';
    }

  }
   ?>
 </form>
</body>
</html>
