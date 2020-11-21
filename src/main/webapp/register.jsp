<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Registration</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="style2.css">
        <script src="scripts/jquery.min.js"></script>
        <script src="scripts/lodash.min.js"></script>
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@100;300;400;600;700;900&display=swap" rel="stylesheet">
        <script type="text/javascript">

        const isValidElement = element => {
            return element.name && element.value;
        };

        const formToJSON = elements => [].reduce.call(elements, (data, element) => {
            if (isValidElement(element)  && element.name!=='reppassword') {
                data[element.name] = element.value;
            }
            return data;
        }, {});

        $(document).ready(function () {
            const form = document.getElementById('regForm');
            form.addEventListener('submit', (event) => {
                event.preventDefault(); //stops form from submitting
                const password = $('#password').val()
                const reppassword = $("#reppassword").val()
                if (password === reppassword) {
                    const data = formToJSON(form.elements)
                    const dataJson = JSON.stringify(data);
                    console.log('json data', data);
                    var p = $.post('register', dataJson);
                    p.done(function (r) {
                        console.log("RESPONSE GOT");
                                $('#ajax_response').text(r)
                                console.log(r)
                    })
                } else {
                    $('#message').html('Passwords do not match')
                    console.log('Passwords do not match')
                };
            });
        });

        </script>
    </head>
<body>
    <div class="links">
        <a href="login.jsp">Log In</a>
    </div>
    <div class="heading">
        
        <div class="hotel_logo">
            <a href="index.jsp">
            <span>Hotel <br> Dreamers</span>
            </a>
        </div>
        
        <div class="services">
            <a href="index.jsp"> Homepage </a>
            <a href="draft.html">Create a Booking</a>
            <a href="draft.html">Manage my Booking</a>
            <a href="draft.html">Information</a>
            <a href="draft.html">Contacts</a>
        </div>
    </div>
<div class="container">
    <div class="row text-center alert">
    <div class="row col-md-6 col-md-offset-3">
        <div class="panel panel-primary">
            <div class="panel-heading text-center">
    <div class="title_section">
        <span class="title">Registration</span>
    </div>
            </div>
            <div class="panel-body">
    <div class="registration">
        <form id="regForm">
            <div class="form-group">
            <input type="text" class="form-control"placeholder="First Name" name="firstname" id="firstname" required> <!-- on same line -->
            </div>
            <div class="form-group">
            <input type="text" class="form-control" placeholder="Last Name" name="lastname" id="lastname" required> <br>
            </div>
            <div class="form-group">
            <input type="text" class="form-control" placeholder="Email" name="email" id="email" required> <br>
            </div>
            <div class="form-group">
            <input type="password" class="form-control" placeholder="Password" name="password" id="password" required> <br>
            </div>
            <div class="form-group">
            <input type="password"  class="form-control" placeholder="Repeat Password" name="reppassword" id="reppassword" required> <br>
            </div>
            <div class="form-group">
            <label for="idType">Choose your Identification Document:</label> <br />
            <select name="idType" class="form-control" id="idType" required>
                <option value="Passport">Passport</option>
                <option value="Drivers License">Driver's License</option>
                <option value="State id">State ID</option>
            </select>
            </div>
            <br>
            <div class="form-group">
            <input type="text" class="form-control" placeholder="Document Number" name="idNumber" id="idNumber" required> <br>
            </div>
            <div class="form-group">
            <input type="text" class="form-control" placeholder="Address line 1 (country, city, place)" id="addressLine1" name="addressLine1" required>
            </div>
            <br>
            <div class="form-group">
            <input type="text" class="form-control" placeholder="Address line 2 (any additional info)" id="addressLine2" name="addressLine2" > <br>
            </div>
            <div class="form-group">
            <input type="text" class="form-control" name="mobilePhoneNumber" id="mobilePhoneNumber" placeholder="Mobile Phone Number" pattern="\+[0-9]{11}" required> <br>
            </div>
            <div class="form-group">
            <input type="text"  class="form-control" name="homePhoneNumber" id="homePhoneNumber" placeholder="Home Phone Number" pattern="\+[0-9]{11}"> <br>
            </div>
            <div class="form-group">
                <input type="date" class="form-control" name="dateOfBirth" id="dateOfBirth" placeholder="yyyy-mm-dd"> <br>
            </div>
            <!-- sex -->
<div class="form-group">
    <label for="email">Gender</label>
    <div>
            <input type="radio" class="radio-inline" id="male" name="sex" value="male">
            <label for="male">Male</label>
            <input type="radio" class="radio-inline" id="female" name="sex" value="female">
            <label for="female">Female</label>
            <input type="radio" class="radio-inline" id="nonbinary" name="sex" value="other">
            <label for="nonbinary">Other</label> <br>
    </div>
</div>
            <input type="submit" id="register_button" value="Register">
        </form>
    </div>
                <div class="panel-footer text-right">
                    <small>  &copy; Hotel Dreamers </small>
                </div>
        <div class="message">${message}</div>
    </div>
    </div>
    </div>
    </div>
</div>
    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>
</html>