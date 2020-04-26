<%-- 
    Document   : apply
    Created on : Oct 7, 2018, 11:56:31 PM
    Author     : hp
--%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <style>
            body{
                margin: 0;
            }
            #outer
            {
                width:100%;
                height:auto;
                color:white;
                background-color:teal ;
                border:2px solid black;
            }
            #area
            {
                width:100%;
                height:auto;
            }
            table{
                width:95%;
                border:2px solid white;
                margin-top:20px;
                font-size:15px;
                color:white;
                background-color:black;
            }

            th{ padding:3px;}
            #da{width:550px;}
            #na{margin-left:40px;}
            #botn{margin-top:15px;background-color:black;color:white;width:90px;height:25px; cursor: pointer;}
        </style>
    </head>
    <body>
        <div id="outer">
            <div id="area">
                <center>
                    <form action="#" method="post">

                        <table>
                            <caption>Personal Detail</caption>
                            <tr><td>FULL NAME</td><td><input type="text" placeholder="Name"  name="aname" pattern="[A-Za-z  ]{3,28}"  required=""></td>
                                <td>FATHER NAME</td><td><input type="text" placeholder="Father Name"  name="afname" pattern="[A-Za-z  ]{3,25}" required="" ></td></tr>
                            <tr><td>D.O.B.</td><td><input type="text" placeholder="dd/mm/yyyy"   name="adob" required="" pattern="(0[1-9]|1[0-9]|2[0-9]|3[01])/(0[1-9]|1[012])/[0-9]{4}" ></td>
                                <td>BLOOD GROUP</td><td><input type="text" placeholder="AB+" required=""  name="ablood" pattern="[A-Za-o-+]{1,3}"></td></tr>
                            <tr><td>RELIGION</td><td><input type="text" placeholder="Hindu/Muslim/Etc"   name="areligion" pattern="[A-Za-z ]{4,10}" ></td>
                                <td>NATIONALITY</td><td><input type="text" placeholder="Indian/Etc"  required="" name="anation" pattern="[A-Za-z ]{3,10}"></td></tr>
                            <tr>
                                <td>LANGUAGE KNOWN</td>
                                <td><input name="alang" type="text" required="" pattern="[A-Za-z ]{3,10}" ></td>
                                <td><input  name="alang" type="text" pattern="[A-Za-z ]{3,10}"></td>
                                <td><input name="alang" type="text" pattern="[A-Za-z ]{3,10}"></td>
                            <tr>
                            <tr>
                                <td>GENDER</td>
                                <td><input type="radio" name="agender" value="m">MALE</td>
                                <td><input type="radio"  name="agender" value="f">FEMALE</td>
                                <td><input type="radio"  name="agender" value="t">TRANSGENDER</td>
                            </tr>
                        </table>
                        <table id="one">
                            <caption>Qualification</caption>
                            <tr>
                                <th>S.no</th>
                                <th>Qualification</th>
                                <th>college/Institute</th>
                                <th>Board/university</th>
                                <th>Year</th>
                            </tr>
                            <tr>
                                <td>1.</td>
                                <td>High School</td>
                                <td id="da"><input type="text" id="da" pattern="[A-Za-z .  . ]{4,35}" name="acollhigh" required="" placeholder="college name"></td>
                                <td > <select name="aboardhigh" required="" id="na" style="width:160px;">
                                        <option value="UP">UP</option>
                                        <option value="CBSE">CBSE</option>
                                        <option value="ICSE">ICSE</option>
                                    </select>
                                </td>
                                <td><input type="text"  placeholder="yyyy" id="na" pattern="[0-9]{4}"  required="" name="ayearhigh"></td>
                            </tr>
                            <tr>
                                <td>2.</td>
                                <td>Intermediate</td>
                                <td id="da"><input type="text" id="da" pattern="[A-Za-z .  . ]{4,35}"  name="acollinter" placeholder="college name"></td>
                                <td><select name="aboardinter"  id="na" style="width:160px;">
                                        <option value="UP">UP</option>
                                        <option value="CBSE">CBSE</option>
                                        <option value="ICSE">ICSE</option>
                                    </select></td>
                                <td><input type="text" placeholder="yyyy" id="na" pattern="[0-9]{4}" name="ayearinter"></td>
                            </tr>
                            <tr>
                                <td>3.</td>
                                <td>Graduation</td>
                                <td id="da"><input type="text" id="da" placeholder="college name"  pattern="[A-Za-z .  . ]{4,35}" name="acollgra"></td>
                                <td><input type="text" id="na" placeholder="university" pattern="[A-Za-z .  . ]{4,35}" name="aboardgra"></td>
                                <td><input type="text"  placeholder="yyyy" id="na" pattern="[0-9]{4}" name="ayeargra"></td>
                            </tr><tr>
                                <td>4.</td>
                                <td>Post Graduation</td>
                                <td id="da"><input type="text" id="da" name="acollphd" pattern="[A-Za-z .  . ]{4,35}" ></td>
                                <td><input type="text" id="na" name="aboardphd" pattern="[A-Za-z .  . ]{4,35}"></td>
                                <td><input type="text" placeholder="yyyy" id="na" pattern="[0-9]{4}" name="ayearphd"></td>
                            </tr>
                        </table>
                        <table>
                            <caption>Address & Contact details</caption>
                            <tr><td>E-MAIL</td><td><input type="email" name="aemail" required ></td>
                                <td>MOBILE</td><td><input type="text" name="amob"  pattern="[6789][0-9]{9}"  required></td></tr>
                            <tr><td>HOUSE/FLAT NO.</td><td><input type="text" name="ahomeno" pattern="[123456][0-9]{2,3,4}"></td>
                                <td>STREET NAME</td><td><input type="text" name="astreet" pattern="[A-Za-z ]{3,15}"></td></tr>
                            <tr><td>CITY/TOWN</td><td><input type="text" name="acity" pattern="[A-Za-z ]{4,20}" ></td>
                                <td>LANDMARK</td><td><input type="text" name="alandmark" pattern="[A-Za-z ]{5,20}"></td></tr>
                            <tr><td>STATE</td><td><input type="text" name="astate"  pattern="[A-Za-z ]{2}" ></td>
                                <td>PIN CODE</td><td><input type="text" name="apin" pattern="[2][0-9]{5}" ></td></tr>
                        </table>
                        <table>
                            <tr>
                                <td> Applying for post:</td>
                                <td><select name="apost" >
                                        <option value="HR">HR</option>
                                        <option value="Developer">Developer</option>
                                        <option value="Coder">Coder</option>
                                        <option value="worker">Worker</option>
                                    </select> 
                                </td><td>
                                    Have Experince
                                    <input type="radio"  name="aexp" value="yes">Yes     
                                    <input type="radio"  name="aexp" value="No">No
                            </tr></table>
                        <br>
                        <input type="checkbox" required="" >I have read & agree all Terms & Conditions of your organisation.
                        <br>		

                        <input type="submit" value="SUBMIT" id="botn" name="sub">
                        <input type="reset" value="RESET" id="botn">
                        <%
                            if (request.getParameter("sub") != null) {
                                String aaname, aafname, aadob, aalang, aagender, aablood, aareligion, aanation, aacollhigh, aaboardhigh, aayearhigh, aacollinter, aaboardinter, aayearinter, aacollgra, aaboardgra, aayeargra, aacollphd, aaboardphd, aayearphd, aaemail, aamob, aastreet, aacity, aalandmark, aastate, aapost, aaexp;
                                int aahomeno, aapin;
                                int x = 0;
                                PreparedStatement pst;
                                Connection con = null;
                                try {
                                    aaname = request.getParameter("aname");
                                    aafname = request.getParameter("afname");
                                    aadob = request.getParameter("adob");
                                    aablood = request.getParameter("ablood");
                                    aareligion = request.getParameter("areligion");
                                    aanation = request.getParameter("anation");
                                    aalang = request.getParameter("alang");
                                    aagender = request.getParameter("agender");
                                    aacollhigh = request.getParameter("acollhigh");
                                    aaboardhigh = request.getParameter("aboardhigh");
                                    aayearhigh = request.getParameter("ayearhigh");
                                    aacollinter = request.getParameter("acollinter");
                                    aaboardinter = request.getParameter("aboardinter");
                                    aayearinter = request.getParameter("ayearinter");
                                    aacollgra = request.getParameter("acollgra");
                                    aaboardgra = request.getParameter("aboardgra");
                                    aayeargra = request.getParameter("ayeargra");
                                    aacollphd = request.getParameter("acollphd");
                                    aaboardphd = request.getParameter("aboardphd");
                                    aayearphd = request.getParameter("ayearphd");
                                    aamob = request.getParameter("amob");
                                    aalandmark = request.getParameter("alandmark");
                                    aapost = request.getParameter("apost");
                                    aaexp = request.getParameter("aexp");
                                    aahomeno = Integer.parseInt(request.getParameter("ahomeno"));
                                    aastreet = request.getParameter("astreet");
                                    aacity = request.getParameter("acity");
                                    aastate = request.getParameter("astate");
                                    aapin = Integer.parseInt(request.getParameter("apin"));
                                    aaemail = request.getParameter("aemail");
                                    Class.forName("com.mysql.jdbc.Driver");
                                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrmanage", "root", "");
                                    pst = con.prepareStatement("insert into new_apply(AName,AFname,ADob,ABlood,ARlegion,ANation,ALang,AGender,ACollhigh,ABoardhigh,AYearhigh,ACollinter,Aboardinter,AYearinter,ACollgra,ABoardgra,AYeargra,ACollphd,ABoardphd,AYearphd,AEmail,AMob,AHno,AStreet,ACity,ALand,AState,Apost,AExp,APin)  values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                                    pst.setString(1, aaname);
                                    pst.setString(2, aafname);
                                    pst.setString(3, aadob);
                                    pst.setString(4, aablood);
                                    pst.setString(5, aareligion);
                                    pst.setString(6, aanation);
                                    pst.setString(7, aalang);
                                    pst.setString(8, aagender);
                                    pst.setString(9, aacollhigh);
                                    pst.setString(10, aaboardhigh);
                                    pst.setString(11, aayearhigh);
                                    pst.setString(12, aacollinter);
                                    pst.setString(13, aaboardinter);
                                    pst.setString(14, aayearinter);
                                    pst.setString(15, aacollgra);
                                    pst.setString(16, aaboardgra);
                                    pst.setString(17, aayeargra);
                                    pst.setString(18, aacollphd);
                                    pst.setString(19, aaboardphd);
                                    pst.setString(20, aayearphd);
                                    pst.setString(21, aaemail);
                                    pst.setString(22, aamob);
                                    pst.setInt(23, aahomeno);
                                    pst.setString(24, aastreet);
                                    pst.setString(25, aacity);
                                    pst.setString(26, aalandmark);
                                    pst.setString(27, aastate);
                                    pst.setString(28, aapost);
                                    pst.setString(29, aaexp);
                                    pst.setInt(30, aapin);
                                    x = pst.executeUpdate();
                                    if (x == 1) {
                        %><%out.print("succesfull");
                        %>

                        <%
                            }
                        } catch (Exception xx) {
                            out.println(xx.getMessage());
                        %><strong style="color: red; font-size: 50px;">Alert!</strong> Record not inserted.....<%
                                }
                            }%>

                    </form>
                </center>
            </div>
        </div>
    </body>


</html>

