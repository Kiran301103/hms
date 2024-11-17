<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" type="text/css" href="font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="style.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="vendor/fontawesome/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=IBM+Plex+Sans&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <a class="navbar-brand" href="#"><i class="fa fa-heartbeat" aria-hidden="true"></i> ZENLIFE REVIVE </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
     <ul class="navbar-nav mr-auto">
       <li class="nav-item">
        <a class="nav-link" href="logout1.php"><i class="fa fa-sign-out" aria-hidden="true"></i>Logout</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="#"></a>
      </li>
    </ul>
  </div>
    </nav>
</head>
<style>
    .bg-primary {
        background: -webkit-linear-gradient(left, #3931af, #00c6ff);
    }
    .col-md-4 {
        max-width: 20% !important;
    }
    .list-group-item.active {
        z-index: 2;
        color: #fff;
        background-color: #342ac1;
        border-color: #007bff;
    }
    .text-primary {
        color: #342ac1!important;
    }
    #cpass {
        display: -webkit-box;
    }
    #list-app {
        font-size: 15px;
    }
    .btn-primary {
        background-color: #3c50c1;
        border-color: #3c50c1;
    }
    .btn-medicine {
        background-color: #28a745;
        border-color: #28a745;
        color: white;
    }
    .btn-medicine:hover {
        background-color: #218838;
        border-color: #1e7e34;
    }
</style>
<body style="padding-top:50px;">
    <div class="container-fluid" style="margin-top:50px;">
        <h3 style="margin-left: 40%; padding-bottom: 20px;font-family: 'IBM Plex Sans', sans-serif;"> WELCOME PHARM </h3>
        <div class="row">
            <div class="col-md-4" style="max-width:25%;margin-top: 3%;">
                <div class="list-group" id="list-tab" role="tablist">
                    <a class="list-group-item list-group-item-action" href="#list-pres" id="list-pres-list" role="tab" data-toggle="list" aria-controls="home">Prescription List</a>
                </div><br>
            </div>
            <div class="tab-pane fade" id="list-pres" role="tabpanel" aria-labelledby="list-pres-list">
                <div class="col-md-8">
                    <div class="row">
                        <table class="table table-hover" style="margin-left: 330px;">
                            <thead>
                                <tr>
                                    <th scope="col">Doctor</th>
                                    <th scope="col">Patient ID</th>
                                    <th scope="col">Appointment ID</th>
                                    <th scope="col">First Name</th>
                                    <th scope="col">Last Name</th>
                                    <th scope="col">Appointment Date</th>
                                    <th scope="col">Appointment Time</th>
                                    <th scope="col">Disease</th>
                                    <th scope="col">Allergy</th>
                                    <th scope="col">Prescription</th>
                                    <th scope="col">Provide</th> <!-- New column for the button -->
                                </tr>
                            </thead>
                            <tbody>
                                <?php 
                                    $con = mysqli_connect("localhost", "root", "", "myhmsdb");
                                    $query = "SELECT * FROM prestb";
                                    $result = mysqli_query($con, $query);
                                    while ($row = mysqli_fetch_array($result)){
                                        $doctor = $row['doctor'];
                                        $pid = $row['pid'];
                                        $ID = $row['ID'];
                                        $fname = $row['fname'];
                                        $lname = $row['lname'];
                                        $appdate = $row['appdate'];
                                        $apptime = $row['apptime'];
                                        $disease = $row['disease'];
                                        $allergy = $row['allergy'];
                                        $pres = $row['prescription'];
                                        echo "<tr>
                                            <td>$doctor</td>
                                            <td>$pid</td>
                                            <td>$ID</td>
                                            <td>$fname</td>
                                            <td>$lname</td>
                                            <td>$appdate</td>
                                            <td>$apptime</td>
                                            <td>$disease</td>
                                            <td>$allergy</td>
                                            <td>$pres</td>
                                            <td><a href='pharm/index.php' button class='btn btn-medicine'>Medicine</button></td> <!-- Green button -->
                                        </tr>";
                                    }
                                ?>
                            </tbody>
                        </table>
                        <br>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.10.1/sweetalert2.all.min.js"></script>
</body>
</html>
