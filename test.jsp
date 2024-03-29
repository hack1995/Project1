<%-- 
    Document   : test
    Created on : Jun 28, 2018, 5:11:44 PM
    Author     : 04019
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.15/css/bootstrap-multiselect.css" rel="stylesheet" type="text/css">
        <script
            src="https://code.jquery.com/jquery-3.3.1.min.js"
            integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
        crossorigin="anonymous"></script>
        <script src="assets/custom/js/jquery.multiselect.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.15/js/bootstrap-multiselect.js"></script>

        <!-- https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.15/css/bootstrap-multiselect.css-->
        <style type="text/css">
            body {
                font: normal 14px/100% "Andale Mono", AndaleMono, monospace;
                color: #fff;
                padding: 50px;
                width: 300px;
                margin: 0 auto;
                background-color: #374954;
            }

            .dropdown {
                position: absolute;
                top:50%;
                transform: translateY(-50%);
            }

            a {
                color: #fff;
            }

            .dropdown dd,
            .dropdown dt {
                margin: 0px;
                padding: 0px;
            }

            .dropdown ul {
                margin: -1px 0 0 0;
            }

            .dropdown dd {
                position: relative;
            }

            .dropdown a,
            .dropdown a:visited {
                color: #fff;
                text-decoration: none;
                outline: none;
                font-size: 12px;
            }

            .dropdown dt a {
                background-color: #4F6877;
                display: block;
                padding: 8px 20px 5px 10px;
                min-height: 25px;
                line-height: 24px;
                overflow: hidden;
                border: 0;
                width: 272px;
            }

            .dropdown dt a span,
            .multiSel span {
                cursor: pointer;
                display: inline-block;
                padding: 0 3px 2px 0;
            }

            .dropdown dd ul {
                background-color: #4F6877;
                border: 0;
                color: #fff;
                display: none;
                left: 0px;
                padding: 2px 15px 2px 5px;
                position: absolute;
                top: 2px;
                width: 280px;
                list-style: none;
                height: 100px;
                overflow: auto;
            }

            .dropdown span.value {
                display: none;
            }

            .dropdown dd ul li a {
                padding: 5px;
                display: block;
            }

            .dropdown dd ul li a:hover {
                background-color: #fff;
            }

            button {
                background-color: #6BBE92;
                width: 302px;
                border: 0;
                padding: 10px 0;
                margin: 5px 0;
                text-align: center;
                color: #fff;
                font-weight: bold;
            }
        </style>
    </head>
    <body>
        <dl class="dropdown"> 

            <dt>
                <a href="#">
                    <span class="hida">Select</span>    
                    <p class="multiSel"></p>  
                </a>
            </dt>

            <dd>
                <div class="mutliSelect">
                    <ul>
                        <li>
                            <input type="checkbox" value="Apple" />Apple</li>
                        <li>
                            <input type="checkbox" value="Blackberry" />Blackberry</li>
                        <li>
                            <input type="checkbox" value="HTC" />HTC</li>
                        <li>
                            <input type="checkbox" value="Sony Ericson" />Sony Ericson</li>
                        <li>
                            <input type="checkbox" value="Motorola" />Motorola</li>
                        <li>
                            <input type="checkbox" value="Nokia" />Nokia</li>
                    </ul>
                </div>
            </dd>
            <button>Filter</button>
        </dl>
        <script type="text/javascript">
            /*
             Dropdown with Multiple checkbox select with jQuery - May 27, 2013
             (c) 2013 @ElmahdiMahmoud
             license: https://www.opensource.org/licenses/mit-license.php
             */

            $(".dropdown dt a").on('click', function () {
                $(".dropdown dd ul").slideToggle('fast');
            });

            $(".dropdown dd ul li a").on('click', function () {
                $(".dropdown dd ul").hide();
            });

            function getSelectedValue(id) {
                return $("#" + id).find("dt a span.value").html();
            }

            $(document).bind('click', function (e) {
                var $clicked = $(e.target);
                if (!$clicked.parents().hasClass("dropdown"))
                    $(".dropdown dd ul").hide();
            });

            $('.mutliSelect input[type="checkbox"]').on('click', function () {

                var title = $(this).closest('.mutliSelect').find('input[type="checkbox"]').val(),
                        title = $(this).val() + ",";

                if ($(this).is(':checked')) {
                    var html = '<span title="' + title + '">' + title + '</span>';
                    $('.multiSel').append(html);
                    $(".hida").hide();
                } else {
                    $('span[title="' + title + '"]').remove();
                    var ret = $(".hida");
                    $('.dropdown dt a').append(ret);

                }
            });

        </script>
    </body>
</html>
