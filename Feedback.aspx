<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FEEDBACK </title>
     <!-- Importing css cdn links -->
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet"/>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet"/>

  <link href="Css/FeedStyle.css" rel="stylesheet"/>
 
  <!-- Importing js cdn links -->
  <script src="https://unpkg.com/faker@5.5.3/dist/faker.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
     <script>
         function validate(val) {
             v1 = document.getElementById("sub");
             v2 = document.getElementById("msg");

             flag = true;

             if (val >= 1 || val == 0) {c
                 if (v1.value == "") {
                     v1.style.borderColor = "red";
                     flag = false;
                 }
                 else {
                     v1.style.borderColor = "green";
                     flag = true;
                 }
             }

             if (val >= 2 || val == 0) {
                 if (v2.value == "") {
                     v2.style.borderColor = "red";
                     flag = false;
                 }
                 else {
                     v2.style.borderColor = "green";
                     flag = true;
                 }
             }

             return flag;
         }

         $(document).ready(function () {

             var current_fs, next_fs, previous_fs;

             $(".next").click(function () {

                 str1 = "next1";
                 str2 = "next2";
                 str3 = "next3";

                 if (!str1.localeCompare($(this).attr('id')) && document.getElementById("customCheck1").checked == 1) {
                     val1 = true;
                 }
                 else {
                     val1 = false;
                 }

                 if (!str2.localeCompare($(this).attr('id')) && document.getElementById("sub").value != "") {
                     val21 = true;
                 }
                 else {
                     val21 = false;
                 }

                 if (!str2.localeCompare($(this).attr('id')) && document.getElementById("msg").value != "") {
                     val22 = true;
                 }
                 else {
                     val22 = false;
                 }

                 if ((!str1.localeCompare($(this).attr('id')) && val1 == true) || (!str2.localeCompare($(this).attr('id')) && val21 == true && val22 == true) || !str3.localeCompare($(this).attr('id'))) {
                     current_fs = $(this).parent().parent();
                     next_fs = $(this).parent().parent().next();

                     $(current_fs).removeClass("show");
                     $(next_fs).addClass("show");

                     current_fs.animate({}, {
                         step: function () {

                             current_fs.css({
                                 'display': 'none',
                                 'position': 'relative'
                             });

                             next_fs.css({
                                 'display': 'block'
                             });
                         }
                     });
                 }
             });

             $(".prev").click(function () {

                 current_fs = $(this).parent().parent();
                 previous_fs = $(this).parent().parent().prev();

                 $(current_fs).removeClass("show");
                 $(previous_fs).addClass("show");

                 current_fs.animate({}, {
                     step: function () {

                         current_fs.css({
                             'display': 'none',
                             'position': 'relative'
                         });

                         previous_fs.css({
                             'display': 'block'
                         });
                     }
                 });
             });

         });
        </script>
  
</head>
<body>

    <form id="form1" runat="server">
    <div class="container-fluid px-1 py-5 mx-auto">
    <div class="row d-flex justify-content-center text-center">
        <div class="col-lg-9 col-md-10">
            <div class="card b-0 rounded-0 show">
                <div class="row justify-content-center mx-auto step-container">
                    <div class="col-md-3 col-4 step-box active">
                        <h6 class="step-title-0"> <span class="fa fa-circle"></span> <span class="break-line"></span> <span class="step-title">TERMS AND CONDITIONS</span></h6>
                    </div>
                    <div class="col-md-3 col-4 step-box">
                        <h6 class="step-title-0"> <span class="fa fa-circle"></span> <span class="break-line"></span> <span class="step-title">FEEDBACK</span></h6>
                    </div>
                    <div class="col-md-3 col-4 step-box">
                        <h6 class="step-title-0"> <span class="fa fa-circle"></span> <span class="break-line"></span> <span class="step-title">CONFIRMATION</span> </h6>
                    </div>
                </div>
                <div class="p-3 justify-content-center text-center">
                    <h4 class="heading">Terms and Conditions</h4>
                    <div class="row justify-content-center">
                        <div class="col-lg-3 col-md-1 col-0"></div>
                        <div class="col-lg-9 col-md-11 col-12 list text-left">
                            <div class="custom-control custom-checkbox mb-4"> <input id="customCheck1" type="checkbox" class="custom-control-input" checked="1"> <label for="customCheck1" class="custom-control-label">I have read and agree to the following Terms and Conditions</label> </div>
                            <ol type="1" class="pl-3 text-muted mb-5">
                                <li>Paint Paint Emporium Policy</li>
                                <li>Copyrights issued to KJC </li>
                                <li>All the arts are original and painted by the artist in real time</li>
                                <li>No return policy</li>
                            </ol>
                        </div>
                    </div> <button name="next" id="next1" class="btn btn-success rounded-0 mb-5 next">START</button>
                </div>
            </div>
            <div class="card b-0 rounded-0">
                <div class="row justify-content-center mx-auto step-container">
                    <div class="col-md-3 col-4 step-box">
                        <h6 class="step-title-0"> <span class="fa fa-check"></span> <span class="break-line"></span> <span class="step-title">TERMS AND CONDITIONS</span> </h6>
                    </div>
                    <div class="col-md-3 col-4 step-box active">
                        <h6 class="step-title-0"> <span class="fa fa-circle"></span> <span class="break-line"></span> <span class="step-title">FEEDBACK</span> </h6>
                    </div>
                    <div class="col-md-3 col-4 step-box">
                        <h6 class="step-title-0"> <span class="fa fa-circle"></span> <span class="break-line"></span> <span class="step-title">CONFIRMATION</span> </h6>
                    </div>
                </div>
                <div class="p-3 justify-content-center text-center">
                    <h4 class="heading">Feedback</h4>
                    <div class="row justify-content-center mb-4">
                        <div class="col-xl-7 col-lg-8 col-10 list text-left"> <label class="text-danger mb-3">* Required</label>
                            <div class="form-group"> <label class="form-control-label">Subject * :</label> <input type="text" id="sub" name="subject" placeholder="Subject" class="form-control" onblur="validate(1)"> </div>
                            <div class="form-group"> <label class="form-control-label">Message * :</label> <textarea type="textarea" id="msg" name="message" placeholder="Message" class="form-control" onblur="validate(2)"></textarea> </div>
                        </div>
                    </div> <button class="btn btn-success rounded-0 mb-5 prev">Back</button> <button id="next2" class="btn btn-success rounded-0 mb-5 next" onclick="validate(0)">Submit</button>
                </div>
            </div>
            <div class="card b-0 rounded-0">
                <div class="row justify-content-center mx-auto step-container">
                    <div class="col-md-3 col-4 step-box">
                        <h6 class="step-title-0"> <span class="fa fa-check"></span> <span class="break-line"></span> <span class="step-title">TERMS AND CONDITIONS</span> </h6>
                    </div>
                    <div class="col-md-3 col-4 step-box">
                        <h6 class="step-title-0"> <span class="fa fa-check"></span> <span class="break-line"></span> <span class="step-title">FEEDBACK</span> </h6>
                    </div>
                    <div class="col-md-3 col-4 step-box active">
                        <h6 class="step-title-0"> <span class="fa fa-circle"></span> <span class="break-line"></span> <span class="step-title">CONFIRMATION</span> </h6>
                    </div>
                </div>
                <div class="p-3 justify-content-center text-center">
                    <h4 class="heading">Confirmation</h4>
                    <div class="row d-flex justify-content-center">
                        <div class="mb-4">
                            <h6 class="confirm">Verify all entered details and press confirm</h6>
                        </div>
                    </div> <button class="btn btn-success rounded-0 mb-5 prev">Back</button> <button id="next3" class="btn btn-success rounded-0 mb-5 next">Confirm</button>
                </div>
            </div>
            <div class="card b-0 rounded-0">
                <div class="row justify-content-center mx-auto step-container">
                    <div class="col-md-3 col-4 step-box">
                        <h6 class="step-title-0"> <span class="fa fa-check"></span> <span class="break-line"></span> <span class="step-title">TERMS AND CONDITIONS</span> </h6>
                    </div>
                    <div class="col-md-3 col-4 step-box">
                        <h6 class="step-title-0"> <span class="fa fa-check"></span> <span class="break-line"></span> <span class="step-title">FEEDBACK</span> </h6>
                    </div>
                    <div class="col-md-3 col-4 step-box">
                        <h6 class="step-title-0"> <span class="fa fa-check"></span> <span class="break-line"></span> <span class="step-title">CONFIRMATION</span> </h6>
                    </div>
                </div>
                <div class="p-3 justify-content-center text-center">
                    <h3 class="heading">Thank You for your Feedback!</h3>
                    <div class="row justify-content-center">
                        <div class=""> <img src="https://i.imgur.com/4Y9xMCF.gif" class="fit-image mb-5"> </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
 
</form>
</body>
</html>


