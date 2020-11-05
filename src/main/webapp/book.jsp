<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel Dreamers</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@100;300;400;600;700;900&display=swap" rel="stylesheet">
    <script src="scripts/jquery.min.js"></script>
    <script src="scripts/lodash.min.js"></script>
    <script type="text/javascript">
        //here goes my script

    </script>
</head>
<body>
<div class="links">
    <a href="login.jsp">Log In or Register</a>
</div>
<div class="heading">

    <div class="hotel_logo">
        <a href="index.jsp">
            <span>Hotel <br> Dreamers</span>
        </a>
    </div>

    <div class="services">
        <a href="index.jsp"> Homepage </a>
        <a href="book.jsp">Create a Booking</a>
        <a href="draft.html">Manage my Booking</a>
        <a href="draft.html">Information</a>
        <a href="draft.html">Contacts</a>
    </div>
</div>
<!--<div class="about_hotel">
    <span class="title"> HEY!</span>
    <div class="text_wrapper">
                <span id="oops">
                    Oops! This page hasn't been written yet.
                </span>
    </div>
</div>-->
<form action="">
    <!--  General -->
    <div class="form-group">
        <h2 class="heading">Search rooms</h2>

        <!--  Details -->
        <div class="form-group">
            <h2 class="heading">Details</h2>
            <div class="grid">
                <div class="col-1-4 col-1-4-sm">
                    <div class="controls">
                        <input type="date" id="arrive" class="floatLabel" name="arrive" value="<?php echo date('Y-m-d'); ?>">
                        <label for="arrive" class="label-date"><i class="fa fa-calendar"></i>&nbsp;&nbsp;Arrive</label>
                    </div>
                </div>
                <div class="col-1-4 col-1-4-sm">
                    <div class="controls">
                        <input type="date" id="depart" class="floatLabel" name="depart" value="<?php echo date('Y-m-d'); ?>" />
                        <label for="depart" class="label-date"><i class="fa fa-calendar"></i>&nbsp;&nbsp;Depart</label>
                    </div>
                </div>
            </div>
            <div class="grid">
                <div class="col-1-3 col-1-3-sm">
                    <div class="controls">
                        <i class="fa fa-sort"></i>
                        <select class="floatLabel">
                            <option value="blank"></option>
                            <option value="1">1</option>
                            <option value="2" selected>2</option>
                            <option value="3">3</option>
                        </select>
                        <label id="fruit"><i class="fa fa-male"></i>&nbsp;&nbsp;People</label>
                    </div>
                </div>
                <div class="col-1-3 col-1-3-sm">
                    <div class="controls">
                        <i class="fa fa-sort"></i>
                        <select class="floatLabel">
                            <option value="blank"></option>
                            <option value="deluxe" selected>1</option>

                        </select>
                        <label for="fruit">Room</label>
                    </div>
                </div>

            </div>
        </div>
    </div>
</form>

</body>
</html>