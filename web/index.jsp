<%-- 
    Document   : index
    Created on : Oct 5, 2018, 6:22:15 PM
    Author     : hp
--%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="theme.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            body{

                margin: 0;

            }
            .fa {
                padding: 20px;
                font-size: 15px;
                width: 30px;
                text-align: center;
                text-decoration: none;
                margin: 3px 2px;
                border-radius: 50%;

            }

            .fa:hover {
                opacity: 0.7;
            }

            .fa-facebook {
                margin-left:28%;
                background: #3B5998;
                color: white;
            }

            .fa-twitter {
                background: #55ACEE;
                color: white;
            }

            .fa-google {
                background: #dd4b39;
                color: white;
            }

            #outer
            {
                width:100%;

            }
            #first
            {
                margin-bottom:0px;

                width:100%;
                height:450px;
            }
            #header
            {

                position:fixed;
                width:100%;
                height:180px;
            }
            #header2a
            {


                width:100%;
                height:129px;
            }
            #header2b
            {
                width:100%;
                height:270px;
            }
            #second
            {

                background-color:rgba(240,240,240,0.8);
                width:100%;
                height:515px;
            }
            #left 
            {
                float:left;
                width:50%;
                height:515px;
            }
            #right
            {
                float:right;
                width:50%;
                height:515px;
            }
            #lleft  
            {border-right:1px solid white;
             float:left;
             width:49%;
             height:515px;
            }
            #rleft {
                border-right:1px solid white;
                float:right;
                width:50%;
                height:515px;
            }
            #lright{
                border-right:1px solid white;
                float:right;
                width:49%;
                height:515px;
            }
            #rright {

                float:right;
                width:50%;
                height:515px;
            }
            #third
            {margin-top:0px;
             width:100%;
             height:320px;
            }
            #footer
            {
                background-color:rgba(0,0,0,1);
                width:100%;
                height:170px;
                margin-top:10px;
            }
            #new
            {
                color:white;
                text-align:center;
            }
            #no1{float:left;color:white;font-size:18px;}
            #no2{float:right;color:white;font-size:18px;}
            #row{
                background-color:rgba(240,240,240,0.8);
                width:100%;
                height:550px;
            }
            body {font-family: Arial, Helvetica, sans-serif;}
            * {box-sizing: border-box;}

            .open-button {

                color: white;
                padding: 16px 20px;
                border: none;
                cursor: pointer;
                opacity: 0.8;
                position: fixed;
                top: 23px;
                right: 28px;
                width: 280px;
            }
            .form-popup {
                display: none;
                position: fixed;
                top: 10px;
                right: 15px;
                border: 3px solid #f1f1f1;
                z-index: 9;
            }

            /* Add styles to the form container */
            .form-container {
                max-width:350px;
                padding: 10px;
                background-color: Olive;
            }

            /* Full-width input fields */
            .form-container input[type=text], .form-container input[type=password] {
                width: 100%;
                padding: 15px;
                margin: 5px 0 22px 0;
                border: none;
                background: white;
            }



            /* Set a style for the submit/login button */
            .form-container .btn {
                background-color: dodgerblue;
                color: white;
                padding: 16px 20px;
                border: none;
                 cursor: pointer;
                width: 100%;
                margin-bottom:10px;
                opacity: 0.8;
            }

            /* Add a red background color to the cancel button */
            .form-container .cancel {
                background-color: red;
                cursor: pointer;
            }

            /* Add some hover effects to buttons */
            .form-container .btn:hover, .open-button:hover {
                opacity: 1;
            }
            #tc{color:white;text-align:center;margin-left:28%;}

            @media screen and (max-width: 950px)
            {
                #outer{width:100%;height:auto;}
                #first{width:100%;height:auto;}
                #header{width:100%;height:auto;position:relative;float:right;}
                #header2a{width:100%;height:150px;}
                #header2b{width:100%;height:auto;}
                #second{width:100%;height:auto;}
                #third{width:100%;height:auto;}
                #right{width:100%;float:none;height:auto;}
                #footer{width:100%;height:auto;float:none;}
                #left{width:100%;float:none;height:auto;}
                #lleft{width:100%;float:none;height:auto;}
                #rleft{width:100%;float:none;height:auto;}
                #lright{width:100%;float:none;height:auto;}
                #rright{width:100%;float:none;height:auto;}
                #no1{float:none;text-align:center;width:100%;}
                #no2{float:none;text-align:center;width:100%;}
                #tc{width:100%;height:auto;margin-left:40%;}
                #row{width:100%;height:auto;}
                .open-button{position:relative;}

                .fa-facebook {
                    margin-left:40%;}
            }



            #mySidenav a {
                position: absolute;

                padding: 13px;
                width: 65px;
                height: 132px;
                text-decoration: none;
                font-size: 18px;
                color: white;
                border-radius: 0px 5px 5px 0px ;
            }


            #mySidenav a:hover {
                color:blue; 
                background: #4CAF50;
            }

            #about {
                top: 180px;
                background-color: #55ACEE ;
            }

            #blog {
                top: 318px;
                background-color:  coral;
            }

            #projects {
                top: 350px;
                background-color: #f44336;
            }
            #social{
                background-color:black;
            }

        </style>
    </head>
    <body>
                    
        <div id="outer">
            <div id="header" style="background-color:rgba(0,0,0,0.6)">
                <i style="font-size:100px;text-shadow:4px 5px black;float:left;margin: 25px;color:gold;">people<b style="font-size:60px;">.in</b></i>
                <button  style="color:white;background-color: red;border-radius: 25px;border:0px;float:right; margin: 30px 30px 30px 30px;
                         font-size: 16px;padding: 15px;" class="open-button" onclick="openForm()">LOGIN OR SIGN UP</button>
                <div class="form-popup" id="myForm">
                    <form action="login.jsp" class="form-container" method="post">
                        <h1>Login</h1>

                        <label for="email"><b>Username</b></label>
                        <input type="text"  name="usr" required>

                        <label for="psw"><b>Password</b></label>
                        <input type="password" name="psd" required>

                        <button type="submit" name="b1" <% out.println("\n");%> class="btn" >Login</button>
                        <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
                        <p style="text-align:center;"><a href="forgetpass.jsp">Forget Password?</a></p>
                    </form>
                </div>

                <script>
                    function openForm() {
                        document.getElementById("myForm").style.display = "block";
                    }

                    function closeForm() {
                        document.getElementById("myForm").style.display = "none";
                    }
                </script>
            </div>

        </div>

        <div id="first" style="background:url(h2.jpg);background-repeat:no-repeat;background-size:100% 450px">
            <div id="header2a" >

            </div>
            <div id="header2b" style=" background-color:rgba(0,0,0,0.6)">
                <div id="mySidenav" class="sidenav">
                    <a href="apply.jsp" id="about" ><p style=" transform: rotate(90deg);">Apply Here</p></a> 
                    <a href="training/index.html" id="blog"> <p style=" transform: rotate(90deg);">Support<br>&Training</p></a>
                </div >

                <p style="font-size:48px;color:lime;text-align:center;">Members get access to</p>
                <marquee behavior="scroll" direction="up" scrollamount="6" scrolldelay="1" height="42px"  ><h2 style="color:white;font-size:35px;
                                                                                                               text-align:center;">Personal Profile<br><br>Leave Apply<br><br>Resignation<br><br>Loan Application<br><br>Attendance</h2></marquee>
            </div>

            <div id="second">
                <h1 style="font-family:arial;font-size:40px;text-align:center;  background-color:rgba(240,240,240,0.6);">
                    Proven methodology, profound impact, and sustainable results.</h1>
                <div id="left">
                    <div id="lleft">
                        <img src="laco.jpg" alt="lee" style="width:180px;height:180px;border-radius:50%;margin-left:50px;">
                        <p style="font-size:32px;text-align:center;">"Management is  nothing more than motivating for people"</p>
                    </div>
                    <div id="rleft">
                        <img src="arte.jpg" alt="lee" style="width:180px;height:180px;border-radius:50%;margin-left:50px;">
                        <p style="font-size:30px;text-align:center;">"Allow people to be themselves. People want to be GREAT, great companies let them be GREAT"</p>
                    </div>
                </div>
                <div id="right">
                    <div id="lright">
                        <img src="simon.jpg" alt="lee" style="width:180px;height:180px;border-radius:50%;margin-left:50px;">

                        <p style="font-size:27px;text-align:center;">"When people are financially invested, they want a return. When people are emotionally invested, they want to contribute."</p></div>
                    <div id="rright">
                        <img src="and.jpg" alt="lee" style="width:180px;height:180px;border-radius:50%;margin-left:50px;">
                        <p style="font-size:30px;text-align:center;">"You cannot push anyone up the ladder unless he is willing to climb."</p>
                    </div>
                </div>
            </div>
            <div id="row">
                <h1  style="font-size:48px; text-align:center;">We understand your business demands</h1>
                <div id="right">
                    <div id="rright" style="color: #111;">
                        <h4 style="font-size:25px;text-align:center;">HEALTH & SAFETY</h4>
                        <img src="d6.jpg" alt="logo"  style="width:210px;height:180px;margin-left:50px;">
                        <p style="font-size:20px;text-align:justify;">Our diverse health and safety collection will help you ensure that your
                            employees know proper procedures and methods to keep themselves and others safe in the workplace.</p>
                    </div>
                    <div id="lright" style="color: #111;">
                        <h4 style="font-size:25px;text-align:center;">MANAGEMENT</h4>
                        <img src="h7.png" alt="logo" style="width:210px;height:180px;margin-left:50px;">
                        <p style="font-size:20px;">Our broad collection of manager training will help get new
                            supervisors up to speed fast or act as refreshers for your seasoned managers.</p>
                    </div>
                </div>
                <div id="left">
                    <div id="lleft" style="color: #111;">
                        <h4 style="font-size:25px;text-align:center;">CUSTOMER SERVICE</h4>
                        <img src="d2.jpg" alt="logo"  style="width:210px;height:180px;margin-left:50px;">
                        <p style="font-size:20px;">Our customer service training dvds will help ensure that your employees and customer service
                            representatives have  notch customer service skills to ensure the best customer service for your customers.</p>
                    </div>
                    <div id="lright" style="color: #111;" >
                        <h4 style="font-size:25px;text-align:center;">COMMUNICATION</h4>
                        <img src="d3.jpg" alt="logo"  style="width:210px;height:180px;margin-left:50px;">
                        <p style="font-size:20px;">Our communication training will help minimize conflicts and misunderstandings as well as
                            improve listening skills between your employees for a better work environment.</p>
                    </div>
                </div>
            </div>
            <div id="third">
                <h1 style="font-family:arial;font-size:40px;text-align:center;">Trusted by 1 Million+ HR Professionals Worldwide</h1>
                <marquee behavior="scroll" direction="left" scrollamount="13" scrolldelay="1">
                    <img src="l2.png" alt="logo" width="180px" height="180px">
                    <img src="l3.jpg" alt="logo" width="180px" height="180px">
                    <img src="l4.png" alt="logo" width="180px" height="180px">
                    <img src="l5.jpg" alt="logo" width="180px" height="180px">
                    <img src="l11.png" alt="logo" width="180px" height="180px">
                    <img src="l7.jpg" alt="logo" width="180px" height="180px">
                    <img src="l8.png" alt="logo" width="180px" height="180px">
                    <img src="l9.png" alt="logo" width="180px" height="180px">
                    <img src="l10.png" alt="logo" width="180px" height="180px">
                </marquee>
            </div>
            <div id="footer">
                <p id="new">copyright&#169people.in.All rights reserved</p>
                <address>
                    <pre id="no1">
Head Office:
  purani haveli,susan marg,
  Raipur,Chattisgarh,India.
  pin no.:210145
                    </pre >
                </address>
                <pre id="no2">
Owner:M/S AA website developers  
Telephone:05446-456325
Mobile:+91-87655555799
E-mail:padharosaa008@gmail.com
                </pre>
                <a href="#" id="tc" >Terms & conditions</a>
                <br><br>
                <a href="http://www.facebook.com" class="fa fa-facebook"></a>
                <a href="http://www.twiter.com" class="fa fa-twitter"></a>
                <a href="http://www.google.com" class="fa fa-google"></a>
            </div>
        </div>
    </body>
</html>