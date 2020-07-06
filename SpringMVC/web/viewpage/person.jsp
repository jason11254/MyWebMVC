<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
    <title>About Me</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        html,body,h1,h2,h3,h4,h5,h6 {font-family: "Roboto", sans-serif}
    </style>
    <body class="w3-light-grey" >

        <!-- Page Container -->
        <div class="w3-content w3-margin-top" style="max-width:1400px;">

            <!-- The Grid -->
            <div class="w3-row-padding">

                <!-- Left Column -->
                <div class="w3-third">

                    <div class="w3-white w3-text-grey w3-card-4">
                        <div class="w3-display-container">
                            <img src="${pageContext.request.contextPath}/viewImage/me.jpg" style="width:100%" alt="Avatar">
                            <div class="w3-display-bottomleft w3-container w3-text-black">
                                <h2><span style="color:white;" face="微軟正黑體">巫宗霖&nbsp;&nbsp;WU,TSUNG-LIN</span></h2>
                            </div>
                        </div>
                        <div class="w3-container">
                            <p><i class="fa fa-home fa-fw w3-margin-right w3-large w3-text-teal"></i>桃園市中壢區</p>
                            <p><i class="fa fa-birthday-cake fa-fw w3-margin-right w3-large w3-text-teal"></i>86-06-13</p>
                            <p><i class="fa fa-envelope fa-fw w3-margin-right w3-large w3-text-teal"></i>jason11254@gmail.com</p>
                            <p><i class="fa fa-phone fa-fw w3-margin-right w3-large w3-text-teal"></i>0976136639</p>
                            <p><i class="fa fa-car fa-fw w3-margin-right w3-large w3-text-teal"></i>普通重機</p>
                            <hr>

                            <p class="w3-large"><b><i class="fa fa-asterisk fa-fw w3-margin-right w3-text-teal"></i>Skills<br>&nbsp;&nbsp;(熟練度:
                                    &nbsp;5非常精通 4精通 3熟練 2尚可 1有學過)</b></p>
                            <h6><b>Java相關</b></h6>
                            JAVA&nbsp;4&nbsp;&nbsp;JSTL&nbsp;3&nbsp;&nbsp;Servlet&nbsp;3&nbsp;&nbsp;JDBC&nbsp;3&nbsp;&nbsp;AJAX&nbsp;1&nbsp;&nbsp;Spring&nbsp;1
                            <h6><b>資料庫相關</b></h6>
                            MySQL&nbsp;3&nbsp;
                            <h6><b>網頁相關</b></h6>
                            HTML&nbsp;3&nbsp;&nbsp;CSS&nbsp;3&nbsp;&nbsp;JavaScript&nbsp;3&nbsp;&nbsp;JSP&nbsp;3&nbsp;&nbsp;jQuery&nbsp;1&nbsp;&nbsp;Bootstrap&nbsp;1
                            <h6><b>其他</b></h6>
                            Windows&nbsp;3&nbsp;&nbsp;Linux&nbsp;3&nbsp;&nbsp;NetBeans&nbsp;3&nbsp;&nbsp;Eclipse&nbsp;2&nbsp;&nbsp;Tomcat&nbsp;1<br>
                            Pychon&nbsp;3&nbsp;&nbsp;C&nbsp;3&nbsp;&nbsp;C++&nbsp;2&nbsp;&nbsp;C#&nbsp;1&nbsp;&nbsp;
                            <p class="w3-large w3-text-theme"><b><i class="fa fa-globe fa-fw w3-margin-right w3-text-teal"></i>語言</b></p>
                            <p>中文&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;聽:精通&nbsp;&nbsp;說:精通&nbsp;&nbsp;讀:精通&nbsp;&nbsp;寫:精通</p>
                            <p>英文&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;聽:中等&nbsp;&nbsp;說:略懂&nbsp;&nbsp;讀:中等&nbsp;&nbsp;寫:略懂</p>                          
                            <br>
                        </div>
                    </div><br>

                    <!-- End Left Column -->
                </div>

                <!-- Right Column -->
                <div class="w3-twothird">
                    <div class="w3-container w3-card w3-white w3-margin-bottom">
                        <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-graduation-cap fa-fw w3-margin-right w3-xxlarge w3-text-teal" aria-hidden="true"></i><b>自傳</b></h2>
                        <div class="w3-container">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我是巫宗霖，是家中長男。個性隨和不樹敵，喜歡與人溝通相處互相幫助，是個憨厚的老實人。
                            家庭教育一直都是以人品為第一優先，團體以人和為貴。自認責任心強，會盡力做到不愧對團隊的效益以及利益，願意補足自己不夠的部分。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我大學就讀資訊工程學系，在學期間除去基本Java、C、Python語法外，還接觸了如Arduino、Raspberry Pi、
                            樂高等硬體設備的基礎應用，以及HTML、CSS、JS等前端設計基礎。也因為自己是資工的底子，有自信在沒接觸過的開發環境也可以較非本科的人更快進入狀況。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;畢業專題是一台撿垃圾機器人，名叫"小小清道夫"。使用Pychon作為程式語言配合OpenCV與Tensorflow工具來進行影像辨識
                            ，讓電腦從機器人回傳的串流影像中辨識出鋁箔包後下指令讓機器人前去清理。雖說成品精準度與效能都有待提升，但是第一次實驗成功時的興奮與成就感我依然記得。<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;畢業後我在巨匠電腦進修java程式，也成功在課程結束後考取1z0-808的證照。期間也將透過書本自學將網頁前端應用
                            HTML、CSS、JavaScript等網頁前端語法和Spring框架語法熟練起來。預計2020年11月開始學習巨匠JAVA企業培訓Spring相關課程。希望在未來的職場中，自己能夠達到"學以致用,用以致學"
                            成為該領域中的佼佼者。我的自傳到此結束，感謝閱讀。<br><br><br>
                        </div>
                    </div>
                    <div class="w3-container w3-card w3-white w3-margin-bottom">
                        <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-book fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i><b>學經歷</b></h2>
                        <div class="w3-container">
                            <h5 class="w3-opacity"><b>巨匠電腦 JAVA 程式設計師認證班</b></h5>
                            <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>Oct 2019 - <span class="w3-tag w3-teal w3-round">Current</span></h6>
                            <p>包含Java OCPJP, Java Web OCE JWCD(JavaEE,  Servlet,  JSP), Java企業產學就業(Strtus, JPA, Spring, RWS, AJAX, JQuery)</p>
                            <hr>
                        </div>
                        <div class="w3-container">
                            <h5 class="w3-opacity"><b>靜宜大學 資訊工程學系</b></h5>
                            <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>Sep 2015 - Jun 2019</h6>
                            <p>資訊工程學系 學士學位</p><br>
                        </div>
                    </div>
                    <div class="w3-container w3-card w3-white w3-margin-bottom">
                        <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-bookmark fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i><b>證照</b></h2>
                        <div class="w3-container">
                            <h5 class="w3-opacity"><b>OCPJP 1Z0-808</b></h5><br><br>
                        </div>
                    </div>
                    <div class="w3-container w3-card w3-white">
                        <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-certificate fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>作品</h2>
                        <div class="w3-container">
                            <h5 class="w3-opacity"><b>畢業專題</b></h5>
                            <h6 class="w3-text-teal"><i class="fa fa-address-book fa-fw w3-margin-right"></i>小小清道夫</h6>
                            <div>
                                <table>
                                    <tr>
                                        <th rowspan="2" width="30%">
                                            <img src="${pageContext.request.contextPath}/viewImage/car.jpg" style="width:90%" alt="Avatar">
                                        </th>
                                        <th width="70%">作品簡述</th>
                                    </tr>
                                    <tr>
                                        <td><p>車子會在一個範圍空間內搜索目標物品，找到目標後會向其靠近並夾取目標，夾取目標後車子會尋找終點位置，找到終點後向終點靠近。</p><br>
                                            詳細GitHub&nbsp;:&nbsp;&nbsp;<a href="https://github.com/jason11254/-.git">https://github.com/jason11254/-.git</a></td>
                                    </tr>
                                </table>

                            </div>
                            <hr>
                        </div>
                        <div class="w3-container">
                            <h5 class="w3-opacity"><b>課程 + 自學練習實作</b></h5>
                            <h6 class="w3-text-teal"><i class="fa fa-address-book fa-fw w3-margin-right"></i>My JavaMVC frount-end Web Server</h6>
                            <div>
                                <table>
                                    <tr>
                                        <th rowspan="2" width="30%">
                                            <img src="${pageContext.request.contextPath}/viewImage/webp.jpg" style="width:90%" alt="Avatar">
                                        </th>
                                        <th width="70%">作品簡述</th>
                                    </tr>
                                    <tr>
                                        <td><p>透過Java語言以及MySQL資料庫設計一個提供使用者登入以及註冊帳號進入的MVC架構網站+程式。(包含Servlet JSP Jdbc SQL Spring JdbcTemplate)</p><br>
                                            詳細GitHub&nbsp;:&nbsp;&nbsp;<a href="https://github.com/jason11254/MyWebMVC.git">https://github.com/jason11254/MyWebMVC.git</a></td>
                                    </tr>
                                </table>

                            </div>
                            <hr>
                        </div>
                    </div>

                    <!-- End Right Column -->
                </div>

                <!-- End Grid -->
            </div>

            <!-- End Page Container -->
        </div>

    </body>
</html>
