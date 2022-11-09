<!DOCTYPE html>
<html lang="en">
<?php
include("connection/connect.php");
error_reporting(0);
session_start();

include_once 'product-action.php';
if (empty($_SESSION["name"])) {
    header('location:index.php');
} else {
?>


    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="#">
        <title>Dishes</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/animsition.min.css" rel="stylesheet">
        <link href="css/animate.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
    </head>

    <body>

        <header id="header" class="header-scroll top-header headrom">
            <nav class="navbar navbar-dark">
                <div class="container">
                    <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#mainNavbarCollapse">&#9776;</button>
                    <a class="navbar-brand" href="index.php"> Yummy-Tummy</a>
                    <div class="collapse navbar-toggleable-md  float-lg-right" id="mainNavbarCollapse">
                        <ul class="nav navbar-nav">
                            <li class="nav-item"> <a class="nav-link active" href="index.php">Home <span class="sr-only">(current)</span></a> </li>
                            <li class="nav-item"> <a class="nav-link active" href="restaurants.php">Restaurants <span class="sr-only"></span></a> </li>

                            <?php
                            if (empty($_SESSION["user_id"])) {
                                echo '<li class="nav-item"><a href="login.php" class="nav-link active">Login</a> </li>
							  <li class="nav-item"><a href="registration.php" class="nav-link active">Signup</a> </li>';
                            } else {


                                echo  '<li class="nav-item"><a href="your_orders.php" class="nav-link active">Your Orders</a> </li>';
                                echo  '<li class="nav-item"><a href="logout.php" class="nav-link active">Logout</a> </li>';
                                echo  '<li class="nav-item"><p style="color:#6699ff;font-size:21px;margin-top:3px;">' . $_SESSION["name"] . '</p></li>';
                            }

                            ?>

                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-4">
                    <p class="display-1"></p>
                </div>
            </div>
        </div>
        <div class="page-wrapper">
            <div class="top-links">
                <div class="container">
                    <ul class="row links">

                        <li class="col-xs-12 col-sm-4 link-item"><span>1</span><a href="restaurants.php">Choose Restaurants</a></li>
                        <li class="col-xs-12 col-sm-4 link-item active"><span>2</span><a href="#">BOOK A TABLE</a></li>

                        <li class="col-xs-12 col-sm-4 link-item"><span>3</span><a href="#">Order and Pay</a></li>

                    </ul>
                </div>
            </div>
            <?php $ress = mysqli_query($db, "select * from restaurant where rs_id='$_GET[res_id]'");
            $rows = mysqli_fetch_array($ress);

            ?>
            <section class="inner-page-hero bg-image" data-image-src="images/img/dish.jpeg">
                <div class="profile">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12  col-md-4 col-lg-4 profile-img">
                                <div class="image-wrap">
                                    <figure><?php echo '<img src="admin/Res_img/' . $rows['image'] . '" alt="Restaurant logo">'; ?></figure>
                                </div>
                            </div>

                            <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 profile-desc">
                                <div class="pull-left right-text white-txt">
                                    <h6><a href="#"><?php echo $rows['title']; ?></a></h6>
                                    <p><?php echo $rows['address']; ?></p>
                                </div>
                            </div>


                        </div>
                    </div>
                </div>
            </section>
            <div class="breadcrumb">
                <div class="container">

                </div>
            </div>
            <div class="container m-t-10">
                <div class="row">
                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-3">

                        <div class="widget widget-cart">
                            <div class="widget-heading">
                                <h3 class="widget-title text-dark">
                                    Your Cart
                                </h3>


                                <div class="clearfix"></div>
                            </div>
                            <div class="order-row bg-white">
                                <div class="widget-body">


                                    <?php

                                    $item_total = 0;

                                    foreach ($_SESSION["cart_item"] as $item) {
                                    ?>

                                        <div class="title-row">
                                            <?php echo $item["title"]; ?><a href="dishes.php?res_id=<?php echo $_GET['res_id']; ?>&action=remove&id=<?php echo $item["d_id"]; ?>">
                                                <i class="fa fa-trash pull-right"></i></a>
                                        </div>

                                        <div class="form-group row no-gutter">
                                            <div class="col-xs-8">
                                                <input type="text" class="form-control b-r-0" value=<?php echo "£" . $item["price"]; ?> readonly id="exampleSelect1">

                                            </div>
                                            <div class="col-xs-4">
                                                <input class="form-control" type="text" readonly value='<?php echo $item["quantity"]; ?>' id="example-number-input">
                                            </div>

                                        </div>

                                    <?php
                                        $item_total += ($item["price"] * $item["quantity"]);
                                    }
                                    ?>



                                </div>
                            </div>
                            <script>
                                function checkCont(i) {
                                    t = 0;
                                    for (j = 0; j < document.f1.Table.length; j++) {
                                        if (document.f1.Table[j].checked) {
                                            t = t + 1;
                                        }
                                    }
                                    if (t == 1) {
                                        document.getElementById("total_table_price").innerHTML = "£ 5";
                                        document.getElementById("submit_button").disabled = false;
                                        document.cookie = "table_selected =" + t;
                                    } else if (t == 2) {
                                        document.getElementById("total_table_price").innerHTML = "£ 10";
                                        document.getElementById("submit_button").disabled = false;
                                        document.cookie = "table_selected =" + t;
                                    }
                                    if (t > 2) {
                                        alert("ONLY 2 TABLE ALLOW PER CUSTOMER");
                                        document.f1.Table[i].checked = false;
                                    } else if (t == 0) {
                                        document.getElementById("total_table_price").innerHTML = "£ 0";
                                        document.getElementById("submit_button").disabled = true;
                                        console.log(t);
                                        document.cookie = "table_selected =" + t;
                                        // var up = <?php $update_table ?>;



                                    }



                                    return t;



                                }
                            </script>

                            <form name="f1" method="post">
                                <div class="widget-body">
                                    <div class="price-wrap text-xs-center">
                                        <script>

                                        </script>
                                        <p>TOTAL</p>
                                        <h3 class="value" id="total_table_price" name="check_tbl"><strong>£ 0</strong></h3>
                                        <button name="submit" id="submit_button"  disabled>RESERVED TABLE</button>
                                        


                                    </div>
                                </div>




                        </div>
                    </div>

                    <div class="col-xs-12 col-sm-8 col-md-8 col-lg-6">


                        <div class="menu-widget" id="2">
                            <div class="widget-heading">
                                <h3 class="widget-title text-dark" style="text-align: center; font-size: 25px;">
                                    TABLE</h3>
                                <br />

                            </div>
                            <div class="col-md-5">

                            </div>
                            <div class="widget-heading">
                                <h3 class="widget-title text-dark">
                                    <?php

                                    $tb = 'SELECT  * FROM total_tbl';
                                    $tq = mysqli_query($db, $tb);
                                    $t = 1;
                                    while ($row = mysqli_fetch_array($tq)) {

                                        for ($i = 0; $i < $row['total_table']; $i++) {
                                            echo '<center><h2><input type="checkbox"  name= "Table" onclick="checkCont( ' . $i . ' )" value =' . $row['total_tbl'] . ' > &nbsp;&nbsp;Table ' . $t . '</input></h2><br/></center>';
                                            $t++;
                                        }

                                        // echo '<h2><input type="checkbox" id= '.$row['rs_id'],' name= "Table[]" value=>Table 2</input></h2>';
                                        // echo '<h2><input type="checkbox" id= '.$row['rs_id'],' name= "Table[]" value=>Table 3</input></h2>';
                                        // echo '<h2><input type="checkbox" id= '.$row['rs_id'],' name= "Table[]" value=>Table 4</input></h2>';
                                    }
                                    ?>
                                    </form>

                                </h3>

                                <!-- HERE CODE FOR THE DATA ENTRIES -->
                                <?php
                                if (isset($_POST['submit'])) {
                                    $d = $_COOKIE['table_selected'];
                                    echo '<script> console.log(' . $d . ')</script>';
                                    if ($d=="1"){
                                        echo '<script> alert("YOU AHVE SELECTED '.$d.' TABLE");</script>';
                                        $getData = "SELECT * FROM total_tbl";
                                        $r1 = mysqli_query($db,$getData);
                                        while ($r=mysqli_fetch_array($r1)){
                                            
                                        }
                                    }
                                }

                                ?>


                                <div class="clearfix">

                                </div>
                            </div>
                        </div>

                    </div>



                </div>

            </div>

        </div>


        <footer class="footer">
            <div class="container">

                <div class="row bottom-footer">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12 col-sm-3 payment-options color-gray">
                                <h5>Payment Options</h5>
                                <ul>
                                    <li>
                                        <a href="#"> <img src="images/paypal.png" alt="Paypal"> </a>
                                    </li>
                                    <li>
                                        <a href="#"> <img src="images/mastercard.png" alt="Mastercard"> </a>
                                    </li>
                                    <li>
                                        <a href="#"> <img src="images/maestro.png" alt="Maestro"> </a>
                                    </li>
                                    <li>
                                        <a href="#"> <img src="images/stripe.png" alt="Stripe"> </a>
                                    </li>
                                    <li>
                                        <a href="#"> <img src="images/bitcoin.png" alt="Bitcoin"> </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-xs-12 col-sm-4 address color-gray">
                                <h5>Group Project UEL</h5>
                                <p>Group Member are : Ravi, Darsh, Nirali and Arthai</p>
                                <h5><a href="https://chat.whatsapp.com/HGAlgWary6EAsl3MYp7ehj"><img src="images/img/app.jpg"></a>Connect to our group.</h5>
                            </div>
                            <div class="col-xs-12 col-sm-5 additional-info color-gray">
                                <h5>Addition informations</h5>
                                <p>Join thousands of other restaurants who benefit from having partnered with us.</p>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </footer>

        </div>

        </div>




        <script src="js/jquery.min.js"></script>
        <script src="js/tether.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/animsition.min.js"></script>
        <script src="js/bootstrap-slider.min.js"></script>
        <script src="js/jquery.isotope.min.js"></script>
        <script src="js/headroom.js"></script>
        <script src="js/foodpicky.min.js"></script>
    </body>

</html>

<?php
}
?>