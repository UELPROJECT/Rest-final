<!DOCTYPE html>
<html lang="en">
<?php
include("../connection/connect.php");
error_reporting(0);
session_start();

if (isset($_POST['submit'])) {
        
    if (isset($_POST['hotel'])){
        
        $q1 = 'SELECT * FROM restaurant ';
        $q2 = mysqli_query($db,$q1);
        if (!mysqli_num_rows($q2) > 0){
            $success1= '<script type ="text/javascript"> alert ("WRONG DATA")</script>';
        }else {
            while ($rows = mysqli_fetch_array($q2)){
                if ($_POST['hotel'] == $rows['title']){
                    $d = $rows['rs_id'];
                    $q3 = 'INSERT INTO total_tbl (total_table ,rs_id)VALUES ("4",'.$d.')';
                    $q4 = mysqli_query($db,$q3);
                    $success =     '<div class="alert alert-success alert-dismissible fade show">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
         GET THE VALUE
    </div>';
                }
            }
        }
        // $q3 = 'INSERT INTO total_tbl VALUES("4",'.$q2.')';
        // $q4 = mysqli_query($db,$q3);
        

    }





}
















?>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="images/favicon.png">
    <title>All Orders</title>
    <link href="css/lib/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="css/helper.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">


</head>

<body class="fix-header fix-sidebar">

    <div class="preloader">
        <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" />
        </svg>
    </div>

    <div id="main-wrapper">

        <div class="header">
            <nav class="navbar top-navbar navbar-expand-md navbar-light">
                <div class="navbar-header">
                    <a class="navbar-brand" href="dashboard.php">

                        <span><img src="images/food-mania-logo.png" alt="homepage" class="dark-logo" /></span>
                    </a>
                </div>
                <div class="navbar-collapse">

                    <ul class="navbar-nav mr-auto mt-md-0">




                    </ul>

                    <ul class="navbar-nav my-lg-0">



                        <li class="nav-item dropdown">

                            <div class="dropdown-menu dropdown-menu-right mailbox animated zoomIn">
                                <ul>
                                    <li>
                                        <div class="drop-title">Notifications</div>
                                    </li>

                                    <li>
                                        <a class="nav-link text-center" href="javascript:void(0);"> <strong>Check all notifications</strong> <i class="fa fa-angle-right"></i> </a>
                                    </li>
                                </ul>
                            </div>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-muted  " href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="images/bookingSystem/3.png" alt="user" class="profile-pic" /></a>
                            <div class="dropdown-menu dropdown-menu-right animated zoomIn">
                                <ul class="dropdown-user">
                                    <li><a href="logout.php"><i class="fa fa-power-off"></i> Logout</a></li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>

        <div class="left-sidebar">

            <div class="scroll-sidebar">

                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                        <li class="nav-devider"></li>
                        <li class="nav-label">Home</li>
                        <li> <a href="dashboard.php"><i class="fa fa-tachometer"></i><span>Dashboard</span></a></li>
                        <li class="nav-label">Log</li>
                        <li> <a href="all_users.php"> <span><i class="fa fa-user f-s-20 "></i></span><span>Users</span></a></li>
                        <li> <a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-archive f-s-20 color-warning"></i><span class="hide-menu">Restaurant</span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="all_restaurant.php">All Restaurants</a></li>
                                <li><a href="add_category.php">Add Category</a></li>
                                <li><a href="add_restaurant.php">Add Restaurant</a></li>

                            </ul>
                        </li>
                        <li> <a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-cutlery" aria-hidden="true"></i><span class="hide-menu">Menu</span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="all_menu.php">All Menues</a></li>
                                <li><a href="add_menu.php">Add Menu</a></li>


                            </ul>
                        </li>
                        <li> <a href="all_orders.php"><i class="fa fa-shopping-cart" aria-hidden="true"></i><span>Orders</span></a></li>
                        <li> <a href="all_tables.php"><i class="fa fa-table" aria-hidden="true"></i><span>Table Booked</span></a></li>

                    </ul>
                </nav>

            </div>

        </div>

        <div class="page-wrapper">



            <div class="container-fluid">
               <?php
               echo $success;
               ?>
                <div class="row">
                    <div class="col-12">


                        <div class="col-lg-12">
                            <div class="card card-outline-primary">
                                <div class="card-header">
                                    <h4 class="m-b-0 text-white">Add Tables</h4>
                                </div>

                                <div class="table-responsive m-t-40">
                                    <table id="myTable" class="table table-bordered table-striped">
                                        <thead>
                                        <form action='' method='post' enctype="multipart/form-data">
                                                <tr>

                                                </tr>
                                                <tr>
                                                    <td>
                                                        <p>
                                                            YOU CAN HAVE ONLY 4 TABLE THIS TIME
                                                        </p>
                                                    </td>
                                                    <td>
                                                        <p>
                                                            <center>
                                                                4
                                                            </center>

                                                        </p>
                                                    </td>


                                                </tr>

                                        </thead>
                                        <tbody>

                                            <tr>
                                                <td><label for="hotel">
                                                        <center> Select the hotel to add table</center>
                                                    </label></td>

                                                <td>
                                                    <center>
                                                        <select name="hotel">
                                                            <?php
                                                            $selected;
                                                            $q1 = "SELECT title FROM restaurant";
                                                            $q2 = mysqli_query($db, $q1);
                                                            if (!mysqli_num_rows($q2) > 0) {
                                                                echo '<td colspan="8"<center>NO RESTAURANT IN DATABASE</center></td>';
                                                            } else {
                                                                while ($rows = mysqli_fetch_array($q2)) {
                                                                    // echo '<option value=' . $rows['rs_id'].'' '/>' . $rows['title'] . ' </option>';
                                                                   
                                                                        echo ('<option value="' . $rows['title'] . '' . $selected . '">' . $rows['title'] . '</option>');
                                                                   
                                                                }
                                                            }
                                                            ?>
                                                        </select>
                                                    </center>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td colspan="2" , rowspan="2">
                                                    <center>

                                                        <input type="submit" name="submit" value="ADD TABLE TO RESTAURANT"></input>
                                                    </center>

                                                </td>
                                            </tr>

                                            </form>

                                          

                                        </tbody>
                                    </table>

                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

    </div>


    <footer class="footer"> © 2021 All rights reserved.</footer>

    </div>

    </div>

    <script src="js/lib/jquery/jquery.min.js"></script>
    <script src="js/lib/bootstrap/js/popper.min.js"></script>
    <script src="js/lib/bootstrap/js/bootstrap.min.js"></script>
    <script src="js/jquery.slimscroll.js"></script>
    <script src="js/sidebarmenu.js"></script>
    <script src="js/lib/sticky-kit-master/dist/sticky-kit.min.js"></script>
    <script src="js/custom.min.js"></script>
    <script src="js/lib/datatables/datatables.min.js"></script>
    <script src="js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/dataTables.buttons.min.js"></script>
    <script src="js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.flash.min.js"></script>
    <script src="js/lib/datatables/cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
    <script src="js/lib/datatables/cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js"></script>
    <script src="js/lib/datatables/cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js"></script>
    <script src="js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.html5.min.js"></script>
    <script src="js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.print.min.js"></script>

</body>

</html>

