 <%@page import="java.util.Random"%>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
    <link rel="stylesheet" type="text/css" href="css/animate.css">
    <style>
        img.background {
    width: 100%;
    height: 100%;
    position: absolute;
    left: 0px;
    top: 0px;
    z-index: -1;
    -webkit-filter: blur(35px); /* Safari 6.0 - 9.0 */
    filter: blur(15px);
}
        .button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 8px 24px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
            border-radius:10px;
}
        .submit {
    background-color: white;
    color: black;
    border: 2px solid #e7e7e7;
}

.submit:hover {background-color: #e7e7e7;}
    </style>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>Almost There !</title>
    </head>
    <body>
        <img class="background" src="../policies/images/bg.png" alt="background" width=100% height=100%>
    <div style="margin-top:-1%; margin-left: 72%;position: absolute"><a href="../index.html" class="fa fa-close" style="text-decoration: none;color:black"></a></div>
        <div class="animated fadeInDown" style="background-color:#c9d7e8;height: 35%;width: 40%;border-radius: 25px;padding:50px;margin-left:25%;text-align: center;margin-top:10%;opacity:0.8">
            <div><center><i class="fa fa-frown-o" style="font-size:48px;color:red"></i></center></div>
            <div><br/>Aghh !</div><div><br/>Bad Eye-Hand Combination We Guess !</div>
                <form action="process.jsp" method="post"><div><br/><input type="submit" class="button submit" value="Try Once More..." /></div></form>
        </div>
    </body>
</html> 
