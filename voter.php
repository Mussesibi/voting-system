<!DOCTYPE html>

<html>

<head>
    <?php require 'header_voter.php'; ?>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <link href='http://fonts.googleapis.com/css?family=Ubuntu' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed' rel='stylesheet' type='text/css'>

</head>

<body>
    <div class="col-sm-12">
        <?php
        if (!isset($_SESSION)) {
            session_start();
        }
        include "auth.php";
        ?>
    </div>
    <div class="container" style="padding:100px;">
        <div class="row">
            <div class="col-sm-12" style="border:2px outset gray;">

                <div class="page-header text-center">
                    <h2 class="specialHead"> Welcome <?php echo $_SESSION['SESS_NAME']; ?> </h2>
                    <p class="normalFont" style="font-size:18px;">You Could Vote</p>
                </div>

                <form action="submit_vote.php" name="vote" method="post" id="myform">
                    <center>
                        <p class="normalFont" style="font-size:24px;"> Vote a prisedent </p><BR>
                        <input type="radio" name="lan" value="John"> John<BR>
                        <input type="radio" name="lan" value="Obama"> Obama<BR>
                        <input type="radio" name="lan" value="Eignel"> Eignel<BR>
                        <input type="radio" name="lan" value="Richard"> Richard<BR>
                        <input type="radio" name="lan" value="Namard"> Namard<BR>
                        </font>
                    </center><br>
                    <?php global $msg;
                    echo $msg; ?>
                    <?php global $error;
                    echo $error; ?>
                    <center><input type="submit" value="Submit Vote" name="submit" style="height:30px; width:100px" /></center>
                    <BR>
                </form>
            </div>
        </div>
    </div>
    
</body>

</html>